import 'package:dartz/dartz.dart';

import 'package:syag/pages/screens/auth/sign_up/domain/failures/entity_failures.dart';
import 'package:syag/pages/screens/auth/sign_up/domain/validations/validations.dart';
import 'package:syag/pages/screens/auth/sign_up/domain/value_object/core/value_object.dart';

// Terms and conditions
// if the return value is null 
// return an error msg
class TermsAndConditions extends ValueObject<EntityFailures, String> {
  @override
  final Either<EntityFailures, String> value;
 const TermsAndConditions._(this.value);
  factory TermsAndConditions({required String text}){
    return TermsAndConditions._(conditionAndTerms(text: text));
  }
}
