import 'package:dartz/dartz.dart';
import 'package:syag/utils/domain/sign_in_form/value_vailures.dart/sign_in_value_failures.dart';

// value object
abstract class ValueObject {
  final Either<SignInValueFailures,String> value; 
 const ValueObject({
    required this.value,
  });

  @override
  String toString() => 'ValueObject(value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ValueObject &&
      other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
