import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather.freezed.dart';

@freezed
class Weather with _$Weather {
  const Weather._();

  const factory Weather({required String city}) = _Weather;

  factory Weather.empty() => const Weather(city: '');
}
