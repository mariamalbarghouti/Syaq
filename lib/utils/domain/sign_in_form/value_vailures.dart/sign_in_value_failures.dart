import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_value_failures.freezed.dart';

@freezed
abstract class SignInValueFailures with _$SignInValueFailures{
  const factory SignInValueFailures.empty({required String msg})= _Empty;
  const factory SignInValueFailures.invalidePassword({required String msg})= _InvalidePassword;
}