import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failures.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  const factory ApiFailure.other(String message) = _Other;
  const factory ApiFailure.serverError(String message) = _ServerError;
  const factory ApiFailure.poorConnection() = _PoorConnection;
  const factory ApiFailure.serverTimeout() = _ServerTimeout;

  //city failure
  const factory ApiFailure.cityNotFound() = _CityNotFound;

  //api key failure
  const factory ApiFailure.apiKeyFailure() = _ApiKeyFailure;
}

extension ApiFailureExt on ApiFailure {
  String get failureMessage {
    final failureMessage = map(
        other: (other) => other.message,
        serverError: (serverError) => serverError.message,
        poorConnection: (_) => 'Poor Internet connection',
        serverTimeout: (_) => 'Server time out',
        cityNotFound: (_) => 'City Not Found',
        apiKeyFailure: (_) => 'Api Key not accessible to use'
        );

    return failureMessage;
  }
}
