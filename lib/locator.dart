import 'package:get_it/get_it.dart';
import 'package:weather_ddd_app/application/dashboard/weather_bloc.dart';
import 'package:weather_ddd_app/domain/core/error/exception_handler.dart';
import 'package:weather_ddd_app/infrastructure/core/http/http.dart';
import 'package:weather_ddd_app/infrastructure/dashboard/repository/weather_repository.dart';
import 'package:weather_ddd_app/presentation/dashboard/homepage.dart';
import 'package:weather_ddd_app/presentation/routes/route_observer.dart';
import 'package:weather_ddd_app/presentation/routes/router.gr.dart';
import 'package:weather_ddd_app/secrets.dart';

import 'infrastructure/dashboard/datasource/weather_remote.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  //============================================================
  //  CORE
  //
  //============================================================

  locator.registerLazySingleton(() => AppRouter());
  locator.registerLazySingleton(() => AppSecret());
  locator.registerLazySingleton(() => DataSourceExceptionHandler());

  locator.registerLazySingleton(
    () => RouterObserver(),
  );
  locator.registerLazySingleton(
    () => WeatherRemoteDataSource(
      httpService: locator<HttpService>(),
      dataSourceExceptionHandler: locator<DataSourceExceptionHandler>(),
      secret: locator<AppSecret>(),
    ),
  );

  locator.registerLazySingleton(
    () => HttpService(
      interceptors: [],
      secret: locator<AppSecret>(),
    ),
  );

  //============================================================
  //  Auth
  //
  //============================================================

  locator.registerLazySingleton(
    () => WeatherRepository(
      weatherRemoteDataSource: locator<WeatherRemoteDataSource>(),
    ),
  );

  locator.registerLazySingleton(
    () => WeatherBloc(dashRepository: locator<WeatherRepository>()),
  );

  //============================================================
  //  User
  //
  //============================================================
}
