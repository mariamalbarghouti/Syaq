import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/utils/logger_mixin.dart';
import 'package:syag/utils/routes/app_route.dart';
import 'package:syag/utils/routes/app_route_links.dart';
import '../utils/theme.dart';
import '../utils/localization/translations.dart';

// App Widget
class AppWidge extends StatelessWidget {
  const AppWidge();

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          title: 'syaq'.tr,
          debugShowCheckedModeBanner: false,
          theme: AppTheme.theme,
          translations: AppTranslation(),
         logWriterCallback: Logger.write,

          // For Handling the directions 
          // of the material 
          // According to the language
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'), // English
            Locale('ar'), // Arabic
          ],
          // if device's language arabic 
          // make it arabic
          // otherwise
          // make it English
          locale:  AppTranslation.deviceLocal,
          initialRoute: AppRouteLinks.signUp,
          getPages: AppRoute.pages,
        );
      },
    );
  }
}
