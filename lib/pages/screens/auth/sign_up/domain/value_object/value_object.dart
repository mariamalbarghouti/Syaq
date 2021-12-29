
import 'package:dartz/dartz.dart';
// Value Object
// for enable the equallity thing 
abstract class ValueObject<L,R> {
  const ValueObject();
  Either<L,R> get value;
  
  val(){
    // return value.fold
  }
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
