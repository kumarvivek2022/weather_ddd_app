import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_ddd_app/domain/core/error/api_failures.dart';
import 'package:weather_ddd_app/domain/dashboard/repository/i_dashboard_repository.dart';
import 'package:weather_ddd_app/domain/dashboard/value/value_objects.dart';
part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IDashRepository dashRepository;

  WeatherBloc({
    required this.dashRepository,
  }) : super(WeatherState.initial()) {
    on<WeatherEvent>(_onEvent);
    add(const WeatherEvent.loadLastSavedCity());
  }

  Future<void> _onEvent(
    WeatherEvent event,
    Emitter<WeatherState> emit,
  ) async {
    await event.map(
        loadLastSavedCity: (e) async {
          final failureOrSuccess = await dashRepository.loadCity();
          await failureOrSuccess.fold((_) {}, (cityCred) async {
            if (cityCred.city.isValid()) {
              emit(state.copyWith(
                city: cityCred.city,
              ));
            }
          });
        },
        cityNameChanged: (e) {
          emit(state.copyWith(
            city: City(e.cityNameStr),
            authFailureOrSuccessOption: none(),
          ));
        },
        searchOnCLick: (e) async {
          final isCityNameValid = state.city.isValid();
          if (isCityNameValid) {
            emit(state.copyWith(
                isSubmitting: true, authFailureOrSuccessOption: none()));

            final failureOrSuccess =
                await dashRepository.weatherData(city: state.city);
            //print("vivek - ${failureOrSuccess.toString()}");
            failureOrSuccess.fold((_) {}, (weather) {
              // dashRepository.storeWeather(weather: StoreWeather(weather.city));
            });

            emit(state.copyWith(
              isSubmitting: false,
              showErrorMessages: true,
              authFailureOrSuccessOption: optionOf(failureOrSuccess),
            ));
          } else {
            emit(state.copyWith(
                showErrorMessages: true,
                authFailureOrSuccessOption:
                    optionOf(const Left(ApiFailure.cityNotFound()))));
          }
        },
        authCheck: (_AuthCheck value) {});
  }

  static initial() {}
}
