import 'package:freezed_annotation/freezed_annotation.dart';


part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState() = _UserState;
  const factory UserState.loading() = UserLoading;

  const factory UserState.logged() = UserLogged;

  const factory UserState.registerLogged() = UserRegisterLogged;

  const factory UserState.logout() = UserLogout;

  const factory UserState.passwordUpdated() = PasswordUpdated;

  const factory UserState.error(
      {String? error, List<String>? errors, Object? data}) = UserError;


}
