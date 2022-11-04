import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_ddd_app/application/dashboard/weather_bloc.dart';
import 'package:weather_ddd_app/domain/core/error/api_failures.dart';
import 'package:weather_ddd_app/domain/dashboard/entities/fetched_weather.dart';
import 'package:weather_ddd_app/domain/dashboard/value/value_objects.dart';
import 'package:weather_ddd_app/infrastructure/dashboard/repository/weather_repository.dart';

class WeatherRepoMock extends Mock implements WeatherRepository {}

void main() {
  final WeatherRepository weatherRepoMock = WeatherRepoMock();
  var weatherState = WeatherState.initial();
  group('Weather Bloc', () {
    blocTest(
      'Weather with empty city name',
      build: () => WeatherBloc(dashRepository: weatherRepoMock),
      setUp: () {
        weatherState = WeatherState.initial();
        when(() => weatherRepoMock.loadCity()).thenAnswer(
          (invocation) async => const Left(
            ApiFailure.other('initial'),
          ),
        );

        when(() => weatherRepoMock.weatherData(city: City(''))).thenAnswer(
            (invocation) async => const Left(ApiFailure.cityNotFound()));
      },
      act: (WeatherBloc bloc) => [
        bloc..add(const WeatherEvent.cityNameChanged('')),
        bloc..add(const WeatherEvent.searchOnCLick()),
      ],
      expect: () => [
        weatherState.copyWith(
          city: City(""),
          isSubmitting: false,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        weatherState.copyWith(
            city: City(""),
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: optionOf(
              const Left(ApiFailure.cityNotFound()),
            )),
      ],
    );

    blocTest(
      'City name change bloc test',
      build: () => WeatherBloc(dashRepository: weatherRepoMock),
      setUp: () {
        weatherState = WeatherState.initial();
        when(() => weatherRepoMock.loadCity()).thenAnswer(
          (invocation) async => const Left(
            ApiFailure.other('initial'),
          ),
        );
      },
      act: (WeatherBloc bloc) => [
        bloc..add(const WeatherEvent.cityNameChanged('patna')),
      ],
      expect: () => [
        weatherState.copyWith(
          city: City("patna"),
          isSubmitting: false,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
      ],
    );
    blocTest(
      'Weather with correct changed city name and onClick',
      build: () => WeatherBloc(dashRepository: weatherRepoMock),
      setUp: () {
        weatherState = WeatherState.initial();
        when(() => weatherRepoMock.weatherData(city: City('delhi'))).thenAnswer(
            (invocation) async => const Right(FetchedWeather(data: {})));
      },
      act: (WeatherBloc bloc) => [
        bloc..add(const WeatherEvent.cityNameChanged('delhi')),
        bloc..add(const WeatherEvent.searchOnCLick()),
      ],
      expect: () => [
        weatherState.copyWith(
          city: City("delhi"),
          isSubmitting: false,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        weatherState.copyWith(
          city: City("delhi"),
          isSubmitting: true,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        weatherState.copyWith(
          city: City("delhi"),
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption:
              optionOf(const Right(FetchedWeather(data: {}))),
        ),
      ],
    );

    blocTest(
      'Weather with incorrect changed city name and onClick',
      build: () => WeatherBloc(dashRepository: weatherRepoMock),
      setUp: () {
        weatherState = WeatherState.initial();
        when(() => weatherRepoMock.weatherData(city: City('abcd'))).thenAnswer(
            (invocation) async => const Left(ApiFailure.cityNotFound()));
      },
      act: (WeatherBloc bloc) => [
        bloc..add(const WeatherEvent.cityNameChanged('abcd')),
        bloc..add(const WeatherEvent.searchOnCLick()),
      ],
      expect: () => [
        weatherState.copyWith(
          city: City("abcd"),
          isSubmitting: false,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        weatherState.copyWith(
          city: City("abcd"),
          isSubmitting: true,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        weatherState.copyWith(
          city: City("abcd"),
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption:
              optionOf(const Left(ApiFailure.cityNotFound())),
        ),
      ],
    );
  });
}
