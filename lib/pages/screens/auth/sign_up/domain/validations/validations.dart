import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:syag/pages/screens/auth/sign_up/domain/failures/entity_failures.dart';

// Entity Logo Validation
// if logo is null or empty
// return error msg
// else return the value
Either<EntityFailures, File?> entityLogoValidation({required String? logo}) {
  if (logo != null && logo.isNotEmpty) {
    return right(File(logo));
  } else {
    return left(
      EntityFailures.emptyImage(msg: "please_enter_your_logo".tr),
    );
  }
}
// TODO make falure out 
// make unexpected error general
Either<EntityFailures,String> conditionAndTerms({required String? text}){
if(text ==null){
  return left(EntityFailures.unexpected(msg: "unexpeted_error".tr));
}else{
  return right(text);
}
}