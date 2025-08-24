import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rabbitevc/models/user/user_model.dart';


part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = ProfileLoading;

  const factory ProfileState.logged(UserModel user) = ProfileLogged;

  const factory ProfileState.updateSuccess() = ProfileUpdateSuccess;

  const factory ProfileState.error({String? error}) = ProfileError;

}
