import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_ddd_app/domain/dashboard/entities/fetched_weather.dart';

part 'weather_dtos.freezed.dart';
part 'weather_dtos.g.dart';

@freezed
class WeatherDto with _$WeatherDto {
  const WeatherDto._();

  const factory WeatherDto({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'data') required Map<String, dynamic> data,
  }) = _WeatherDto;

  factory WeatherDto.fromDomain(FetchedWeather weatherEntities) {
    return WeatherDto(data: weatherEntities.data);
  }

  FetchedWeather toDomain() {
    return FetchedWeather(
      data: data,
    );
  }

  factory WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDtoFromJson(json);
}
