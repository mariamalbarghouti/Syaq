import 'package:dartz/dartz.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:syag/utils/domain/sign_in_form/value_vailures.dart/sign_in_value_failures.dart';

// Mobile Number Validator
Either<SignInValueFailures,String> mobileNumberValidator({required String value}){
  if(value.trim().isEmpty){
  return left(SignInValueFailures.empty(msg: "please_enter_mobile_num".tr));
  }else{
    return right(value);
  }
}

