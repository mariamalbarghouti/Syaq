import 'package:dartz/dartz.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:syag/utils/domain/sign_in_form/value_vailures.dart/sign_in_value_failures.dart';

// Password Validator
Either<SignInValueFailures, String> passwordValidator({required String value}) {
  if (value.trim().isEmpty) {
    return left(SignInValueFailures.empty(msg: "please_enter_pass".tr));
  } else if (value.trim().length < 6) {
    return left(SignInValueFailures.invalidePassword(
        msg: "please_enter_valid_pass".tr));
  } else {
    return right(value);
  }
}
