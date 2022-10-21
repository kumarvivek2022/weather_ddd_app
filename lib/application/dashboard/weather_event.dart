part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.loadLastSavedCity() = _LoadLastSavedCity;
  const factory WeatherEvent.cityNameChanged(String cityNameStr) =
      _CityNameChanged;
  const factory WeatherEvent.searchOnCLick() = _SearchOnCLick;
}
