import 'package:flutter/services.dart';
import 'package:weather_ddd_app/domain/core/error/api_failures.dart';
import 'package:weather_ddd_app/domain/core/error/city_exception.dart';
import 'package:weather_ddd_app/domain/core/error/exception.dart';
import 'dart:io';
import 'dart:async';

class FailureHandler {
  static ApiFailure handleFailure(Object error) {
    if (error is CityException) {
      return error.map(
        invalidCityName: (_) => const ApiFailure.cityNotFound(),
      );
    } else {
      switch (error.runtimeType) {
        case MockException:
          return ApiFailure.other((error as MockException).message);
        case CacheException:
          return ApiFailure.other((error as CacheException).message);
        case ServerException:
          return ApiFailure.serverError((error as ServerException).message);
        case SocketException:
          return const ApiFailure.poorConnection();
        case TimeoutException:
          return const ApiFailure.serverTimeout();
        case PlatformException:
          return ApiFailure.other('${(error as PlatformException).message}');
        case OtherException:
          return ApiFailure.other((error as OtherException).message);
        default:
          return ApiFailure.other(error.toString());
      }
    }
  }
}
