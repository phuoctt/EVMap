import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rabbitevc/models/user/user_model.dart';
import 'package:rabbitevc/models/user/user_point_model.dart';


part 'user_point_state.freezed.dart';

@freezed
class UserPointState with _$UserPointState {
  const factory UserPointState.loading() = UserPointLoading;

  const factory UserPointState.logged(UserPointModel user) = UserPointLogged;

  const factory UserPointState.error({String? error}) = UserPointError;

}
