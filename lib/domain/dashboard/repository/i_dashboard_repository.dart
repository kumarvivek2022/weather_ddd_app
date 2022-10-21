import 'package:dartz/dartz.dart';
import 'package:weather_ddd_app/domain/core/error/api_failures.dart';
import 'package:weather_ddd_app/domain/dashboard/entities/city_cred.dart';
import 'package:weather_ddd_app/domain/dashboard/entities/fetched_weather.dart';
import 'package:weather_ddd_app/domain/dashboard/entities/weather.dart';
import 'package:weather_ddd_app/domain/dashboard/value/value_objects.dart';

abstract class IDashRepository {
  Future<Either<ApiFailure, Weather>> weather({required City city});
  Future<Either<ApiFailure, FetchedWeather>> weatherData({required City city});
  Future<Either<ApiFailure, CityCred>> loadCity();
  Future<Either<ApiFailure, Unit>> storeWeather(
      {required StoreWeather weather});
}
