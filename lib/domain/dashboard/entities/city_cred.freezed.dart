// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'city_cred.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CityCred {
  City get city => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CityCredCopyWith<CityCred> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCredCopyWith<$Res> {
  factory $CityCredCopyWith(CityCred value, $Res Function(CityCred) then) =
      _$CityCredCopyWithImpl<$Res>;
  $Res call({City city});
}

/// @nodoc
class _$CityCredCopyWithImpl<$Res> implements $CityCredCopyWith<$Res> {
  _$CityCredCopyWithImpl(this._value, this._then);

  final CityCred _value;
  // ignore: unused_field
  final $Res Function(CityCred) _then;

  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
    ));
  }
}

/// @nodoc
abstract class _$$_CityCredCopyWith<$Res> implements $CityCredCopyWith<$Res> {
  factory _$$_CityCredCopyWith(
          _$_CityCred value, $Res Function(_$_CityCred) then) =
      __$$_CityCredCopyWithImpl<$Res>;
  @override
  $Res call({City city});
}

/// @nodoc
class __$$_CityCredCopyWithImpl<$Res> extends _$CityCredCopyWithImpl<$Res>
    implements _$$_CityCredCopyWith<$Res> {
  __$$_CityCredCopyWithImpl(
      _$_CityCred _value, $Res Function(_$_CityCred) _then)
      : super(_value, (v) => _then(v as _$_CityCred));

  @override
  _$_CityCred get _value => super._value as _$_CityCred;

  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(_$_CityCred(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
    ));
  }
}

/// @nodoc

class _$_CityCred extends _CityCred {
  const _$_CityCred({required this.city}) : super._();

  @override
  final City city;

  @override
  String toString() {
    return 'CityCred(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityCred &&
            const DeepCollectionEquality().equals(other.city, city));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(city));

  @JsonKey(ignore: true)
  @override
  _$$_CityCredCopyWith<_$_CityCred> get copyWith =>
      __$$_CityCredCopyWithImpl<_$_CityCred>(this, _$identity);
}

abstract class _CityCred extends CityCred {
  const factory _CityCred({required final City city}) = _$_CityCred;
  const _CityCred._() : super._();

  @override
  City get city;
  @override
  @JsonKey(ignore: true)
  _$$_CityCredCopyWith<_$_CityCred> get copyWith =>
      throw _privateConstructorUsedError;
}
