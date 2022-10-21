// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherDto _$WeatherDtoFromJson(Map<String, dynamic> json) {
  return _WeatherDto.fromJson(json);
}

/// @nodoc
mixin _$WeatherDto {
  @JsonKey(name: 'data')
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDtoCopyWith<WeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDtoCopyWith<$Res> {
  factory $WeatherDtoCopyWith(
          WeatherDto value, $Res Function(WeatherDto) then) =
      _$WeatherDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'data') Map<String, dynamic> data});
}

/// @nodoc
class _$WeatherDtoCopyWithImpl<$Res> implements $WeatherDtoCopyWith<$Res> {
  _$WeatherDtoCopyWithImpl(this._value, this._then);

  final WeatherDto _value;
  // ignore: unused_field
  final $Res Function(WeatherDto) _then;

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
abstract class _$$_WeatherDtoCopyWith<$Res>
    implements $WeatherDtoCopyWith<$Res> {
  factory _$$_WeatherDtoCopyWith(
          _$_WeatherDto value, $Res Function(_$_WeatherDto) then) =
      __$$_WeatherDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'data') Map<String, dynamic> data});
}

/// @nodoc
class __$$_WeatherDtoCopyWithImpl<$Res> extends _$WeatherDtoCopyWithImpl<$Res>
    implements _$$_WeatherDtoCopyWith<$Res> {
  __$$_WeatherDtoCopyWithImpl(
      _$_WeatherDto _value, $Res Function(_$_WeatherDto) _then)
      : super(_value, (v) => _then(v as _$_WeatherDto));

  @override
  _$_WeatherDto get _value => super._value as _$_WeatherDto;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_WeatherDto(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherDto extends _WeatherDto {
  const _$_WeatherDto(
      {@JsonKey(name: 'data') required final Map<String, dynamic> data})
      : _data = data,
        super._();

  factory _$_WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDtoFromJson(json);

  final Map<String, dynamic> _data;
  @override
  @JsonKey(name: 'data')
  Map<String, dynamic> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'WeatherDto(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDto &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherDtoCopyWith<_$_WeatherDto> get copyWith =>
      __$$_WeatherDtoCopyWithImpl<_$_WeatherDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherDtoToJson(
      this,
    );
  }
}

abstract class _WeatherDto extends WeatherDto {
  const factory _WeatherDto(
          {@JsonKey(name: 'data') required final Map<String, dynamic> data}) =
      _$_WeatherDto;
  const _WeatherDto._() : super._();

  factory _WeatherDto.fromJson(Map<String, dynamic> json) =
      _$_WeatherDto.fromJson;

  @override
  @JsonKey(name: 'data')
  Map<String, dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDtoCopyWith<_$_WeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}
