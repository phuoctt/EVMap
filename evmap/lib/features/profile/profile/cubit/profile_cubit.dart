import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/profile/profile/cubit/profile_state.dart';
import 'package:rabbitevc/models/user/user_model.dart';
import 'package:rabbitevc/service/api_service/user_service/user_api_service.dart';
import 'package:rabbitevc/service/di/di.dart';
import 'package:rabbitevc/share/constants/constant.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileLoading());
  UserModel? user;

  Future<void> onLoadProfile() async {
    try {
      final res = await getIt.get<UserApiService>().profile();
      if (res.code == ApiStatus.success && res.data != null) {
        user = res.data;
        emit(ProfileLogged(res.data!));
      } else {
        emit(ProfileError(error: res.errors?.messageApp));
      }
    } catch (err) {
      emit(ProfileError(error: S.text?.error_something_went_wrong_try_again));
    }
  }
}
