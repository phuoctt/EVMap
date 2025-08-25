import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rabbitevc/models/charging_station/station_model.dart';

part 'station_state.freezed.dart';

@freezed
class StationState with _$StationState {
  const factory StationState.loading() = StationLoading;

  const factory StationState.screenLoading() = StationScreenLoading;


  const factory StationState.nothing() = StationNothing;

  const factory StationState.logged(
      {required List<Station> data,
      bool? isFinish}) = StationLogged;


  const factory StationState.error({String? error}) = StationError;
}
