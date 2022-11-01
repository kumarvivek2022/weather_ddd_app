import 'package:dartz/dartz.dart';
import 'package:weather_ddd_app/application/dashboard/weather_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_ddd_app/domain/core/error/api_failures.dart';
import 'package:weather_ddd_app/domain/dashboard/entities/fetched_weather.dart';
import 'package:weather_ddd_app/domain/dashboard/entities/weather.dart';
import 'package:weather_ddd_app/presentation/dashboard/homepage.dart';

class WeatherBlocMock extends MockBloc<WeatherEvent, WeatherState>
    implements WeatherBloc {}

void main() {
  late WeatherBloc weatherBlocMock;

  group('Home Screen', () {
    setUp(() {
      weatherBlocMock = WeatherBlocMock();

      when(() => weatherBlocMock.state).thenReturn(WeatherState.initial());
    });

    testWidgets("Widget testing", (tester) async {
      await tester.pumpWidget(
        MultiBlocProvider(
          providers: [
            BlocProvider<WeatherBloc>(
              create: (context) => weatherBlocMock,
            ),
          ],
          child: const MaterialApp(home: Dashboard()),
        ),
      );
      // Create the Finders.
      final cityNameTextField = find.byKey(const Key('CityNameField'));
      final getWeatherButtton = find.byKey(const Key('getWeatherButton'));
      final weatherValues = find.text('No Data Available');
      final containerValues = find.byKey(const Key('containerValues'));
      // var textField = find.byType(TextField);
      var cardValue = find.byType(Card);
      var iconValue = find.byType(Icon);

      expect(cityNameTextField, findsOneWidget);
      expect(getWeatherButtton, findsOneWidget);
      expect(weatherValues, findsNWidgets(6));
      expect(containerValues, findsAtLeastNWidgets(7));
      // expect(textField, findsOneWidget);
      expect(cardValue, findsNWidgets(6));
      expect(iconValue, findsNWidgets(1));
    });

    testWidgets('Invalid city name error', (tester) async {
      final expectedStates = [
        WeatherState.initial().copyWith(
          authFailureOrSuccessOption:
              optionOf(const Right(Weather(city: "gjhch"))),
          showErrorMessages: true,
        ),
        WeatherState.initial().copyWith(
          authFailureOrSuccessOption: optionOf(
            const Left(ApiFailure.other("Http status error [404]")),
          ),
          showErrorMessages: true,
        ),
      ];

      whenListen(weatherBlocMock, Stream.fromIterable(expectedStates));

      await tester.pumpWidget(
        MultiBlocProvider(
          providers: [
            BlocProvider<WeatherBloc>(
              create: (context) => weatherBlocMock,
            )
          ],
          child: const MaterialApp(home: Dashboard()),
        ),
      );

      final errorMessage = find.byType(SnackBar);
      final errorText = find.text("Http status error [404]");

      expect(errorMessage, findsNothing);
      expect(errorText, findsNothing);
      await tester.pump();
      expect(errorMessage, findsOneWidget);
    });

    testWidgets('Correct city name', (tester) async {
      final expectedStates = [
        WeatherState.initial().copyWith(
          authFailureOrSuccessOption:
              optionOf(const Right(Weather(city: "Patna"))),
          showErrorMessages: true,
        ),
        WeatherState.initial().copyWith(
          authFailureOrSuccessOption: optionOf(
            const Right(FetchedWeather(data: {})),
          ),
          showErrorMessages: true,
        ),
      ];

      whenListen(weatherBlocMock, Stream.fromIterable(expectedStates));

      await tester.pumpWidget(
        MultiBlocProvider(
          providers: [
            BlocProvider<WeatherBloc>(
              create: (context) => weatherBlocMock,
            )
          ],
          child: const MaterialApp(home: Dashboard()),
        ),
      );

      final errorMessage = find.byType(SnackBar);

      expect(errorMessage, findsNothing);
      await tester.pump();

      expect(errorMessage, findsNothing);
    });

    testWidgets('Empty city name', (tester) async {
      final expectedStates = [
        WeatherState.initial().copyWith(
          authFailureOrSuccessOption:
              optionOf(const Left(ApiFailure.cityNotFound())),
        ),
      ];

      whenListen(weatherBlocMock, Stream.fromIterable(expectedStates));

      await tester.pumpWidget(
        MultiBlocProvider(
          providers: [
            BlocProvider<WeatherBloc>(
              create: (context) => weatherBlocMock,
            )
          ],
          child: const MaterialApp(home: Dashboard()),
        ),
      );

      final errorMessage = find.byType(SnackBar, skipOffstage: true);
      final errorText = find.text("City Not Found");
      expect(errorText, findsNothing);
      expect(errorMessage, findsNothing);
      await tester.pump();
      expect(errorText, findsOneWidget);
      expect(errorMessage, findsOneWidget);
    });
  });
}
