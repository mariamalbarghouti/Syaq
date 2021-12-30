// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'terms_and_conditions_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TermsAndConditionsDTO _$TermsAndConditionsDTOFromJson(
    Map<String, dynamic> json) {
  return _TermsAndConditionsDTO.fromJson(json);
}

/// @nodoc
class _$TermsAndConditionsDTOTearOff {
  const _$TermsAndConditionsDTOTearOff();

  _TermsAndConditionsDTO call({required String terms}) {
    return _TermsAndConditionsDTO(
      terms: terms,
    );
  }

  TermsAndConditionsDTO fromJson(Map<String, Object> json) {
    return TermsAndConditionsDTO.fromJson(json);
  }
}

/// @nodoc
const $TermsAndConditionsDTO = _$TermsAndConditionsDTOTearOff();

/// @nodoc
mixin _$TermsAndConditionsDTO {
  String get terms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TermsAndConditionsDTOCopyWith<TermsAndConditionsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsAndConditionsDTOCopyWith<$Res> {
  factory $TermsAndConditionsDTOCopyWith(TermsAndConditionsDTO value,
          $Res Function(TermsAndConditionsDTO) then) =
      _$TermsAndConditionsDTOCopyWithImpl<$Res>;
  $Res call({String terms});
}

/// @nodoc
class _$TermsAndConditionsDTOCopyWithImpl<$Res>
    implements $TermsAndConditionsDTOCopyWith<$Res> {
  _$TermsAndConditionsDTOCopyWithImpl(this._value, this._then);

  final TermsAndConditionsDTO _value;
  // ignore: unused_field
  final $Res Function(TermsAndConditionsDTO) _then;

  @override
  $Res call({
    Object? terms = freezed,
  }) {
    return _then(_value.copyWith(
      terms: terms == freezed
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TermsAndConditionsDTOCopyWith<$Res>
    implements $TermsAndConditionsDTOCopyWith<$Res> {
  factory _$TermsAndConditionsDTOCopyWith(_TermsAndConditionsDTO value,
          $Res Function(_TermsAndConditionsDTO) then) =
      __$TermsAndConditionsDTOCopyWithImpl<$Res>;
  @override
  $Res call({String terms});
}

/// @nodoc
class __$TermsAndConditionsDTOCopyWithImpl<$Res>
    extends _$TermsAndConditionsDTOCopyWithImpl<$Res>
    implements _$TermsAndConditionsDTOCopyWith<$Res> {
  __$TermsAndConditionsDTOCopyWithImpl(_TermsAndConditionsDTO _value,
      $Res Function(_TermsAndConditionsDTO) _then)
      : super(_value, (v) => _then(v as _TermsAndConditionsDTO));

  @override
  _TermsAndConditionsDTO get _value => super._value as _TermsAndConditionsDTO;

  @override
  $Res call({
    Object? terms = freezed,
  }) {
    return _then(_TermsAndConditionsDTO(
      terms: terms == freezed
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TermsAndConditionsDTO implements _TermsAndConditionsDTO {
  const _$_TermsAndConditionsDTO({required this.terms});

  factory _$_TermsAndConditionsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TermsAndConditionsDTOFromJson(json);

  @override
  final String terms;

  @override
  String toString() {
    return 'TermsAndConditionsDTO(terms: $terms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TermsAndConditionsDTO &&
            (identical(other.terms, terms) ||
                const DeepCollectionEquality().equals(other.terms, terms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(terms);

  @JsonKey(ignore: true)
  @override
  _$TermsAndConditionsDTOCopyWith<_TermsAndConditionsDTO> get copyWith =>
      __$TermsAndConditionsDTOCopyWithImpl<_TermsAndConditionsDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TermsAndConditionsDTOToJson(this);
  }
}

abstract class _TermsAndConditionsDTO implements TermsAndConditionsDTO {
  const factory _TermsAndConditionsDTO({required String terms}) =
      _$_TermsAndConditionsDTO;

  factory _TermsAndConditionsDTO.fromJson(Map<String, dynamic> json) =
      _$_TermsAndConditionsDTO.fromJson;

  @override
  String get terms => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TermsAndConditionsDTOCopyWith<_TermsAndConditionsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
