import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_ddd_app/domain/dashboard/value/value_objects.dart';

part 'city_cred.freezed.dart';

@freezed
class CityCred with _$CityCred {
  const CityCred._();

  const factory CityCred({
    required City city,
  }) = _CityCred;

  factory CityCred.empty() => CityCred(
        city: City(''),
      );
}
