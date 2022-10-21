import 'package:dartz/dartz.dart';
import 'package:weather_ddd_app/domain/core/error/failures.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  return input.isNotEmpty
      ? right(input)
      : left(ValueFailure.empty(failedValue: input));
}