import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/data/model/access_token.dart';
import 'package:rabbitevc/features/login/auth_screen.dart';
import 'package:rabbitevc/models/base/base_response.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/service/di/di.dart';
import 'package:rabbitevc/service/local_storage/local_storage_service.dart';
import 'package:rabbitevc/share/constants/constant.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/widget/notify_dialog.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor();

  bool showPopup = false;

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = getIt
        .get<LocalStorageService>()
        .getString(LocalStorageKey.saveLogin.name);
    Map<String, String> headers = {};
    headers['accept'] = 'application/json';
    headers['locale'] = 'vi';
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }
    options.headers = headers;
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    final statusCode = response.statusCode;
    if (statusCode == 401) {
      final refreshResponse = await refreshToken();
      final dio = Dio();
      if (refreshResponse == null) {
        getIt
            .get<LocalStorageService>()
            .setString(LocalStorageKey.saveLogin.name, '');
        getIt
            .get<LocalStorageService>()
            .setString(LocalStorageKey.transactionModel.name, '');
        if (!showPopup) {
          showPopup = true;
          final result = NotifyDialog.showMessage(
              isWillPop: false,
              content: S.text?.error_session_has_expired,
              onPressed: () {
                showPopup = false;
                pushNamedAndRemoveUntil(AuthScreen.route, (route) => false,
                    arguments: {'isLogin': true});

              });
        }

        return;
      }
      final token = refreshResponse.token;
      getIt
          .get<LocalStorageService>()
          .setString(LocalStorageKey.saveLogin.name, token ?? '');
      final requestOption = response.requestOptions;
      requestOption.headers["Authorization"] = 'Bearer $token';
      final retry = await _retry(response.requestOptions, dio);
      handler.resolve(retry);
    }

    super.onResponse(response, handler);
  }

  @override
  void onError(
    DioException error,
    ErrorInterceptorHandler handler,
  ) async {
    // final statusCode = error.response?.statusCode;
    // if (statusCode == 401) {
    //   final refreshResponse = await refreshToken();
    //   final dio = Dio();
    //   if (refreshResponse == null) {
    //     super.onError(error, handler);
    //     return;
    //   }
    // }
    super.onError(error, handler);
  }

  Future<Response<dynamic>> _retry(
      RequestOptions requestOptions, Dio dio) async {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    final result = await dio.request<dynamic>(
        '${requestOptions.baseUrl}${requestOptions.path}',
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options);
    return result;
  }

  Future<AccessToken?> refreshToken() async {
    Dio dio = Dio();

    try {
      final token = getIt
          .get<LocalStorageService>()
          .getString(LocalStorageKey.saveLogin.name);
      const url = '${AppConfig.urlDev}auth/extend';
      Response response = await dio.post(
        url,
        options: Options(
          headers: {
            "accept": "application/json",
            "Authorization": 'Bearer $token',
          },
        ),
      );
      return BaseResponse<AccessTokenResponse>.fromJson(
        response.data as Map<String, dynamic>,
        (json) => AccessTokenResponse.fromJson(json as Map<String, dynamic>),
      ).data?.accessToken;
    } catch (e) {
      return null;
    }
  }
}
