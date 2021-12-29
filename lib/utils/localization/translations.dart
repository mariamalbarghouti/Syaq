import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syag/utils/localization/languages/ar.dart';
import 'package:syag/utils/localization/languages/en.dart';

// Handling Application Transilation 
class AppTranslation extends Translations {
  //  if device language is ar
  // make the language arabic
  // else
  // make it English
  static Locale get deviceLocal {
    if (Get.deviceLocale?.languageCode == "ar") {
      return const Locale("ar");
    }
    return const Locale("en");
  }

  // languages dictionary
  @override
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'ar': ar,
      };
}
