import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:rabbitevc/data/api/interceptors/auth_interceptor.dart';
import 'package:rabbitevc/data/api/interceptors/dio_logger.dart';
import 'package:rabbitevc/share/constants/constant.dart';

class AppApi {
  static late Dio _dio;

  static FutureOr<Dio> setup() async {
    final options = BaseOptions(
        responseType: ResponseType.json,
        validateStatus: (status) {
          return true;
        },
        baseUrl: AppConfig.urlDev,
        connectTimeout: const Duration(seconds: 30)
        // setRequestContentTypeWhenNoPayload: true,
        );
    // ignore: join_return_with_assignment

    _dio = Dio(options);
    // CancelToken cancelToken = CancelToken();
    // cancelToken.cancel('User cancel request');

    // _dio.options.headers['content-Type'] = 'application/json';

    /// Unified add authentication request header

    if (kDebugMode) {
      _dio.interceptors.add(DioLogger(
        requestHeader: true,
        responseBody: true,
        requestBody: true,
        responseHeader: true,
        error: true,
        maxWidth: 1000,
      ));
    }
    _dio.interceptors.add(AuthInterceptor());
    return _dio;
  }
}
