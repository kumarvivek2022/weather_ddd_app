import 'dart:async';
import 'package:dio/dio.dart';
import 'package:weather_ddd_app/secrets.dart';

class HttpService {
  late Dio _dio;
  Dio dio() => _dio;

  HttpService({
    required AppSecret secret,
    required List<Interceptor> interceptors,
  }) {
    _dio = Dio(
      BaseOptions(
        baseUrl: secret.baseUrl,
      ),
    );
    _dio.interceptors.addAll([
      ...interceptors,
      LogInterceptor(requestBody: true, responseBody: true),
    ]);
  }

  HttpService.mockDio(Dio dio) : _dio = dio;

  Future<Response> request({
    required String method,
    required String url,
    ResponseType responseType = ResponseType.json,
  }) async {
    try {
      _dio.options.method = method;
      _dio.options.responseType = responseType;

      final response = await _dio.request(
        url,
      );
      return response;
    } on DioError catch (e) {
      throw e.error;
    }
  }
}
