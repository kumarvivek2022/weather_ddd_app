import 'package:dartz/dartz.dart';
import 'package:weather_ddd_app/domain/core/error/failures.dart';
import 'package:weather_ddd_app/domain/core/value/value_objects.dart';
import 'package:weather_ddd_app/domain/core/value/value_validators.dart';

class City extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory City(String input) {
    return City._(validateStringNotEmpty(input));
  }

  const City._(this.value);
}

class StoreWeather extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StoreWeather(String input) {
    return StoreWeather._(validateStringNotEmpty(input));
  }

  const StoreWeather._(this.value);
}
