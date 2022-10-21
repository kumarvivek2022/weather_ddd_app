import 'package:dio/dio.dart';
import 'package:weather_ddd_app/domain/core/error/city_exception.dart';
import 'package:weather_ddd_app/domain/core/error/exception.dart';
import 'package:weather_ddd_app/domain/core/error/exception_handler.dart';
import 'package:weather_ddd_app/domain/dashboard/entities/fetched_weather.dart';
import 'package:weather_ddd_app/infrastructure/core/http/http.dart';
import 'package:weather_ddd_app/infrastructure/dashboard/dtos/weather_dtos.dart';
import 'package:weather_ddd_app/secrets.dart';

class WeatherRemoteDataSource {
  HttpService httpService;
  AppSecret secret;
  DataSourceExceptionHandler dataSourceExceptionHandler;
  WeatherRemoteDataSource(
      {required this.httpService,
      required this.secret,
      required this.dataSourceExceptionHandler});

  Future<FetchedWeather> getWeatherOfCity({required String cityName}) async {
    return await dataSourceExceptionHandler.handle(() async {
      final res = await httpService.request(
        method: 'GET',
        url:
            '/data/2.5/weather?q=$cityName&appid=${secret.apiKey}&units=metric',
      );
      _authExceptionChecker(res: res, jsonKey: 'cod');
      return WeatherDto.fromJson({"data": res.data}).toDomain();
    });
  }

  void _authExceptionChecker({
    required Response<dynamic> res,
    required String jsonKey,
  }) {
    if (res.statusCode != 200) {
      throw ServerException(
        code: res.statusCode ?? 0,
        message: res.statusMessage ?? '',
      );
    } else if (res.data.containsKey("message")) {
      throw ServerException(message: res.data['message']);
    } else if (res.data[jsonKey] == 404) {
      throw const CityException.invalidCityName();
    }
  }
}
