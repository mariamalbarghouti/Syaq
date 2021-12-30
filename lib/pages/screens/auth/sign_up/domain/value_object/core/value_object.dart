
import 'package:dartz/dartz.dart';
import 'package:syag/utils/errors/errors.dart';
// Value Object
// for enable the equallity thing 
abstract class ValueObject<L,R> {
  const ValueObject();
  Either<L,R> get value;
  
  getOrCrash(){
    return value.fold((l) => throw UnexpectedValueObjectError(l.toString()), (r) => r);
  }
  get failureOrUnit{
    return value.fold((l) => left(l), (_) => right(unit));
  }
  //  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
  //   return value.fold(
  //     (l) => left(l),
  //     (r) => right(unit),
  //   );
  // }
  //   T getOrElse(T dflt) {
  //   return value.getOrElse(() => dflt);
  // }
  @override
  String toString() => 'ValueObject(value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ValueObject<L,R> &&
      other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
