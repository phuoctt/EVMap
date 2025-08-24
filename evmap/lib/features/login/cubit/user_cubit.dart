import 'dart:convert';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/data/model/login_request.dart';
import 'package:rabbitevc/features/login/cubit/user_state.dart';
import 'package:rabbitevc/service/api_service/user_service/user_api_service.dart';
import 'package:rabbitevc/service/di/di.dart';
import 'package:rabbitevc/service/local_storage/local_storage_service.dart';
import 'package:rabbitevc/share/constants/constant.dart';
import 'package:rabbitevc/share/utils/app_utils.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserState());

  void onLogin({required String phone, required String password}) async {
    try {
      Codec<String, String> stringToBase64 = utf8.fuse(base64);
      emit(const UserLoading());
      final res = await getIt.get<UserApiService>().login(LoginRequest(
          phone_number: phone,
          password: 'MTIzNDU2',//stringToBase64.encode(password),//
          device_id: await AppUtils.getDeviceId()));
      if (res.code == ApiStatus.success) {
        getIt
            .get<LocalStorageService>()
            .setString(LocalStorageKey.saveLogin.name, res.data?.token ?? '');
        emit(const UserLogged());
      } else {
        emit(UserError(error: res.errors?.messageApp ?? ''));
      }
    } catch (err) {
      if (err is DioError) {
        emit(UserError(error: S.text?.error_something_went_wrong_try_again));
      } else {
        emit(UserError(error: S.text?.error_something_went_wrong_try_again));
      }
    }
  }

  void onLogout() async {
    try {
      emit(const UserLoading());

      final res = await getIt.get<UserApiService>().logout();
      getIt
          .get<LocalStorageService>()
          .setString(LocalStorageKey.saveLogin.name, '');
      emit(const UserLogout());
    } catch (err) {}
  }

  void onRegister(LoginRequest request) async {
    try {
      emit(const UserLoading());
      final res = await getIt.get<UserApiService>().register(request);
      if (res.code == ApiStatus.success) {
        emit(const UserRegisterLogged());
      } else {
        emit(UserError(error: res.errors?.messageApp ?? ''));
      }
    } catch (err) {
      if (err is DioError) {
        emit(UserError(error: S.text?.error_something_went_wrong_try_again));
      } else {
        emit(UserError(error: S.text?.error_something_went_wrong_try_again));
      }
    }
  }
}
