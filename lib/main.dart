import 'dart:async';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syag/ui/app_widget.dart';
import 'services/sharedPrefs.dart';
// import 'package:device_preview/device_preview.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  await SharedPrefs.init();
  // runApp(
  //   DevicePreview(
  //   builder: (context) =>
    const AppWidge();
    // ),
  // );
}
