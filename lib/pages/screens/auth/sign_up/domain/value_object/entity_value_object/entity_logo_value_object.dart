import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:syag/pages/screens/auth/sign_up/domain/failures/entity_failures.dart';
import 'package:syag/pages/screens/auth/sign_up/domain/validations/validations.dart';
import 'package:syag/pages/screens/auth/sign_up/domain/value_object/core/value_object.dart';

// Entity Logo ValueObject
class EntityLogo extends ValueObject<EntityFailures,File?> {
  const EntityLogo._({required this.value});
  // @override
  // final Either<EntityFailures, String> value;

  @override
 final Either<EntityFailures, File?>  value;
  // For Image Validator
  factory EntityLogo({required String? logo}) {
    return EntityLogo._(value: entityLogoValidation(logo: logo));
  }
}
