import 'package:get/get_utils/src/extensions/internacionalization.dart';

// For Any Crash
class UnexpectedValueObjectError extends Error{
  final String valueFailures;

  UnexpectedValueObjectError(this.valueFailures);
  @override
  String toString() {
    return Error.safeToString("unexpeted_error_msg".tr +valueFailures);
  }
}
