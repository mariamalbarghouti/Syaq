import 'package:dartz/dartz.dart';
import 'package:syag/utils/domain/core/value_object.dart';
import 'package:syag/utils/domain/sign_in_form/validations/mobile_validation.dart';
import 'package:syag/utils/domain/sign_in_form/value_vailures.dart/sign_in_value_failures.dart';

class MobileNumber implements ValueObject{
  const MobileNumber._(this.value);
  @override
  final Either<SignInValueFailures, String>  value ;
  factory MobileNumber({required  String input}){
    return  MobileNumber._(mobileNumberValidator(value: input));
  }
}