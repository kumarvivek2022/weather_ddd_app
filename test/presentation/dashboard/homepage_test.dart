import 'package:weather_ddd_app/application/dashboard/weather_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
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

    testWidgets("Test don't have credential", (tester) async {
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
  });
}
