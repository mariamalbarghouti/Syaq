// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  _EmptyImage emptyImage({required String msg}) {
    return _EmptyImage(
      msg: msg,
    );
  }

  _Unexpected unexpected({required String msg}) {
    return _Unexpected(
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
    required TResult Function(String msg) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? emptyImage,
    TResult Function(String msg)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? emptyImage,
    TResult Function(String msg)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyImage value) emptyImage,
    required TResult Function(_Unexpected value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyImage value)? emptyImage,
    TResult Function(_Unexpected value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyImage value)? emptyImage,
    TResult Function(_Unexpected value)? unexpected,
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
abstract class _$EmptyImageCopyWith<$Res>
    implements $EntityFailuresCopyWith<$Res> {
  factory _$EmptyImageCopyWith(
          _EmptyImage value, $Res Function(_EmptyImage) then) =
      __$EmptyImageCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$EmptyImageCopyWithImpl<$Res> extends _$EntityFailuresCopyWithImpl<$Res>
    implements _$EmptyImageCopyWith<$Res> {
  __$EmptyImageCopyWithImpl(
      _EmptyImage _value, $Res Function(_EmptyImage) _then)
      : super(_value, (v) => _then(v as _EmptyImage));

  @override
  _EmptyImage get _value => super._value as _EmptyImage;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_EmptyImage(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmptyImage implements _EmptyImage {
  const _$_EmptyImage({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'EntityFailures.emptyImage(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmptyImage &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$EmptyImageCopyWith<_EmptyImage> get copyWith =>
      __$EmptyImageCopyWithImpl<_EmptyImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) emptyImage,
    required TResult Function(String msg) unexpected,
  }) {
    return emptyImage(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? emptyImage,
    TResult Function(String msg)? unexpected,
  }) {
    return emptyImage?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? emptyImage,
    TResult Function(String msg)? unexpected,
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
    required TResult Function(_EmptyImage value) emptyImage,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return emptyImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyImage value)? emptyImage,
    TResult Function(_Unexpected value)? unexpected,
  }) {
    return emptyImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyImage value)? emptyImage,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (emptyImage != null) {
      return emptyImage(this);
    }
    return orElse();
  }
}

abstract class _EmptyImage implements EntityFailures {
  const factory _EmptyImage({required String msg}) = _$_EmptyImage;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmptyImageCopyWith<_EmptyImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res>
    implements $EntityFailuresCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$EntityFailuresCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_Unexpected(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'EntityFailures.unexpected(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unexpected &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$UnexpectedCopyWith<_Unexpected> get copyWith =>
      __$UnexpectedCopyWithImpl<_Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) emptyImage,
    required TResult Function(String msg) unexpected,
  }) {
    return unexpected(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? emptyImage,
    TResult Function(String msg)? unexpected,
  }) {
    return unexpected?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? emptyImage,
    TResult Function(String msg)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyImage value) emptyImage,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyImage value)? emptyImage,
    TResult Function(_Unexpected value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyImage value)? emptyImage,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements EntityFailures {
  const factory _Unexpected({required String msg}) = _$_Unexpected;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnexpectedCopyWith<_Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}
