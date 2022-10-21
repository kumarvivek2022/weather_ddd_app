import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_exception.freezed.dart';

@freezed
class CityException with _$CityException {
  const factory CityException.invalidCityName() = _InvalidCityName;
}
