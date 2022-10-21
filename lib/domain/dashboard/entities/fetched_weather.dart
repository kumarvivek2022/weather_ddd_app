import 'package:freezed_annotation/freezed_annotation.dart';
part 'fetched_weather.freezed.dart';

@freezed
class FetchedWeather with _$FetchedWeather {
  const FetchedWeather._();

  const factory FetchedWeather({required Map<String, dynamic> data}) =
      _FetchedWeather;

  factory FetchedWeather.empty() => const FetchedWeather(data: {});
}
