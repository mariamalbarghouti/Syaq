import 'package:get/get.dart';
import 'package:syag/utils/languages/en.dart';
import 'package:syag/utils/languages/ar.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'ar': ar,
};
}