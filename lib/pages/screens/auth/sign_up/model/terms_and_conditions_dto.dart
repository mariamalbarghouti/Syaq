import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:syag/pages/screens/auth/sign_up/domain/value_object/core/conditions_value_object.dart';

part 'terms_and_conditions_dto.freezed.dart';
part 'terms_and_conditions_dto.g.dart';

// Data Transfer Object
// for sending and receive data
// from db
// Contains
// [
// clear data type for db,
// convert these data to Custom Object,
// convert Custom Object to DTO,
// toJson,
// fromJson
// ]

@freezed
abstract class TermsAndConditionsDTO with _$TermsAndConditionsDTO {
  const factory TermsAndConditionsDTO({required String terms}) =
      _TermsAndConditionsDTO;

  factory TermsAndConditionsDTO.fromDomain(
          {required TermsAndConditions termsAndConditions}) =>
      TermsAndConditionsDTO(
        terms: termsAndConditions.getOrCrash(),
      );
  factory TermsAndConditionsDTO.fromJson(Map<String, dynamic> json) =>
      _$TermsAndConditionsDTOFromJson(json);
}

extension TermsAndConditionsDTOX on TermsAndConditionsDTO {
  TermsAndConditions toDomain() {
    return TermsAndConditions(text: terms);
  }
}

