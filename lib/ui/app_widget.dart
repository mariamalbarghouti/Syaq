import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/ui/screens/home/home_page/home_page.dart';
import 'package:syag/ui/screens/intro_screen/intro_screen.dart';
import 'package:syag/ui/screens/splash_screen/splash_screen.dart';
import '../services/sharedPrefs.dart';
import '../utils/theme.dart';
import '../utils/translations.dart';

class AppWidge extends StatefulWidget {
  const AppWidge();
  @override
  _AppWidgeState createState() => _AppWidgeState();
  static void setLocale(BuildContext context, Locale newLocale) {
    _AppWidgeState? state = context.findAncestorStateOfType<_AppWidgeState>();
    print(newLocale.languageCode);
    // ignore: invalid_use_of_protected_member
    state!.setState(() => state.locale = newLocale);
  }
}
class _AppWidgeState extends State<AppWidge> {
  Locale? locale;
  late bool showingSpalsh;

  @override
  void initState() {
    super.initState();
    showingSpalsh = true;
    setState(() => locale = _fetchLocale());
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 6),
        () => setState(() => showingSpalsh = false));

    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          title: 'SYAG',
          debugShowCheckedModeBanner: false,
          // builder: DevicePreview.appBuilder,
          builder: (BuildContext context, Widget? child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1.0,
              ),
              child: child!,
            );
          },
          theme: AppTheme.theme,
          translations: MyTranslation(),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'), // English
            Locale('ar'), // Arabic
          ],
          // locale: this.locale,
          locale: Get.deviceLocale,
          home: HomePage(),
          // showingSpalsh ? const SplashScreen() : const IntroScreen(),
        );
      },
    );
  }

  _fetchLocale() {
    if (SharedPrefs.getInstance()!.getData('langCode') == null) return null;
    return Locale(SharedPrefs.getInstance()!.getData('langCode'));
  }
}
