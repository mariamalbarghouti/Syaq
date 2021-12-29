// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'entity_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EntityFailuresTearOff {
  const _$EntityFailuresTearOff();

  _EntityFailures emptyImage({required String msg}) {
    return _EntityFailures(
      msg: msg,
    );
  }
}

/// @nodoc
const $EntityFailures = _$EntityFailuresTearOff();

/// @nodoc
mixin _$EntityFailures {
  String get msg => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) emptyImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? emptyImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EntityFailures value) emptyImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EntityFailures value)? emptyImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntityFailuresCopyWith<EntityFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityFailuresCopyWith<$Res> {
  factory $EntityFailuresCopyWith(
          EntityFailures value, $Res Function(EntityFailures) then) =
      _$EntityFailuresCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class _$EntityFailuresCopyWithImpl<$Res>
    implements $EntityFailuresCopyWith<$Res> {
  _$EntityFailuresCopyWithImpl(this._value, this._then);

  final EntityFailures _value;
  // ignore: unused_field
  final $Res Function(EntityFailures) _then;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EntityFailuresCopyWith<$Res>
    implements $EntityFailuresCopyWith<$Res> {
  factory _$EntityFailuresCopyWith(
          _EntityFailures value, $Res Function(_EntityFailures) then) =
      __$EntityFailuresCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$EntityFailuresCopyWithImpl<$Res>
    extends _$EntityFailuresCopyWithImpl<$Res>
    implements _$EntityFailuresCopyWith<$Res> {
  __$EntityFailuresCopyWithImpl(
      _EntityFailures _value, $Res Function(_EntityFailures) _then)
      : super(_value, (v) => _then(v as _EntityFailures));

  @override
  _EntityFailures get _value => super._value as _EntityFailures;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_EntityFailures(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_EntityFailures implements _EntityFailures {
  const _$_EntityFailures({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'EntityFailures.emptyImage(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EntityFailures &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$EntityFailuresCopyWith<_EntityFailures> get copyWith =>
      __$EntityFailuresCopyWithImpl<_EntityFailures>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) emptyImage,
  }) {
    return emptyImage(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? emptyImage,
    required TResult orElse(),
  }) {
    if (emptyImage != null) {
      return emptyImage(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EntityFailures value) emptyImage,
  }) {
    return emptyImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EntityFailures value)? emptyImage,
    required TResult orElse(),
  }) {
    if (emptyImage != null) {
      return emptyImage(this);
    }
    return orElse();
  }
}

abstract class _EntityFailures implements EntityFailures {
  const factory _EntityFailures({required String msg}) = _$_EntityFailures;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EntityFailuresCopyWith<_EntityFailures> get copyWith =>
      throw _privateConstructorUsedError;
}
