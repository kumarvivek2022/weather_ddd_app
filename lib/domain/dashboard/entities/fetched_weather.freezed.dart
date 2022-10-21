// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fetched_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchedWeather {
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchedWeatherCopyWith<FetchedWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchedWeatherCopyWith<$Res> {
  factory $FetchedWeatherCopyWith(
          FetchedWeather value, $Res Function(FetchedWeather) then) =
      _$FetchedWeatherCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class _$FetchedWeatherCopyWithImpl<$Res>
    implements $FetchedWeatherCopyWith<$Res> {
  _$FetchedWeatherCopyWithImpl(this._value, this._then);

  final FetchedWeather _value;
  // ignore: unused_field
  final $Res Function(FetchedWeather) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$$_FetchedWeatherCopyWith<$Res>
    implements $FetchedWeatherCopyWith<$Res> {
  factory _$$_FetchedWeatherCopyWith(
          _$_FetchedWeather value, $Res Function(_$_FetchedWeather) then) =
      __$$_FetchedWeatherCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class __$$_FetchedWeatherCopyWithImpl<$Res>
    extends _$FetchedWeatherCopyWithImpl<$Res>
    implements _$$_FetchedWeatherCopyWith<$Res> {
  __$$_FetchedWeatherCopyWithImpl(
      _$_FetchedWeather _value, $Res Function(_$_FetchedWeather) _then)
      : super(_value, (v) => _then(v as _$_FetchedWeather));

  @override
  _$_FetchedWeather get _value => super._value as _$_FetchedWeather;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_FetchedWeather(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_FetchedWeather extends _FetchedWeather {
  const _$_FetchedWeather({required final Map<String, dynamic> data})
      : _data = data,
        super._();

  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'FetchedWeather(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchedWeather &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_FetchedWeatherCopyWith<_$_FetchedWeather> get copyWith =>
      __$$_FetchedWeatherCopyWithImpl<_$_FetchedWeather>(this, _$identity);
}

abstract class _FetchedWeather extends FetchedWeather {
  const factory _FetchedWeather({required final Map<String, dynamic> data}) =
      _$_FetchedWeather;
  const _FetchedWeather._() : super._();

  @override
  Map<String, dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$_FetchedWeatherCopyWith<_$_FetchedWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
