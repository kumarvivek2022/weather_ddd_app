// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'city_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CityException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidCityName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidCityName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidCityName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidCityName value) invalidCityName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidCityName value)? invalidCityName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidCityName value)? invalidCityName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityExceptionCopyWith<$Res> {
  factory $CityExceptionCopyWith(
          CityException value, $Res Function(CityException) then) =
      _$CityExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$CityExceptionCopyWithImpl<$Res>
    implements $CityExceptionCopyWith<$Res> {
  _$CityExceptionCopyWithImpl(this._value, this._then);

  final CityException _value;
  // ignore: unused_field
  final $Res Function(CityException) _then;
}

/// @nodoc
abstract class _$$_InvalidCityNameCopyWith<$Res> {
  factory _$$_InvalidCityNameCopyWith(
          _$_InvalidCityName value, $Res Function(_$_InvalidCityName) then) =
      __$$_InvalidCityNameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidCityNameCopyWithImpl<$Res>
    extends _$CityExceptionCopyWithImpl<$Res>
    implements _$$_InvalidCityNameCopyWith<$Res> {
  __$$_InvalidCityNameCopyWithImpl(
      _$_InvalidCityName _value, $Res Function(_$_InvalidCityName) _then)
      : super(_value, (v) => _then(v as _$_InvalidCityName));

  @override
  _$_InvalidCityName get _value => super._value as _$_InvalidCityName;
}

/// @nodoc

class _$_InvalidCityName implements _InvalidCityName {
  const _$_InvalidCityName();

  @override
  String toString() {
    return 'CityException.invalidCityName()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidCityName);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidCityName,
  }) {
    return invalidCityName();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidCityName,
  }) {
    return invalidCityName?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidCityName,
    required TResult orElse(),
  }) {
    if (invalidCityName != null) {
      return invalidCityName();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidCityName value) invalidCityName,
  }) {
    return invalidCityName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidCityName value)? invalidCityName,
  }) {
    return invalidCityName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidCityName value)? invalidCityName,
    required TResult orElse(),
  }) {
    if (invalidCityName != null) {
      return invalidCityName(this);
    }
    return orElse();
  }
}

abstract class _InvalidCityName implements CityException {
  const factory _InvalidCityName() = _$_InvalidCityName;
}
