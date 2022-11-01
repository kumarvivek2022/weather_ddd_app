import 'package:dartz/dartz.dart';
import 'package:weather_ddd_app/domain/core/error/api_failures.dart';
import 'package:weather_ddd_app/domain/core/error/failure_handler.dart';
import 'package:weather_ddd_app/domain/dashboard/entities/city_cred.dart';
import 'package:weather_ddd_app/domain/dashboard/entities/fetched_weather.dart';
import 'package:weather_ddd_app/domain/dashboard/entities/weather.dart';
import 'package:weather_ddd_app/domain/dashboard/repository/i_dashboard_repository.dart';
import 'package:weather_ddd_app/domain/dashboard/value/value_objects.dart';
import 'package:weather_ddd_app/infrastructure/dashboard/datasource/weather_remote.dart';

class WeatherRepository implements IDashRepository {
  final WeatherRemoteDataSource weatherRemoteDataSource;
  WeatherRepository({
    required this.weatherRemoteDataSource,
  });

  @override
  Future<Either<ApiFailure, CityCred>> loadCity() async {
    try {
      return Right(CityCred(city: City('')));
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> storeWeather(
      {required StoreWeather weather}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailure, FetchedWeather>> weatherData(
      {required City city}) async {
    final cityNameStr = city.getOrCrash();
    try {
      // print("vivek - ${cityNameStr.toString()}");
      final getWeatherData =
          await weatherRemoteDataSource.getWeatherOfCity(cityName: cityNameStr);
      // print("vivek 2" + '-' + getWeatherData.toString());

      return Right(getWeatherData);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Weather>> weather({required City city}) {
    throw UnimplementedError();
  }
}
