import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rabbitevc/models/charge_station/charge_box_data_model.dart';
import 'package:rabbitevc/models/charge_station/charge_box_model.dart';
import 'package:rabbitevc/models/charge_station/charge_station_model.dart';
import 'package:rabbitevc/models/charge_station/charge_type_model.dart';
import 'package:rabbitevc/models/charge_station/direction_model.dart';

part 'charge_station_state.freezed.dart';

@freezed
class ChargeStationState with _$ChargeStationState {
  const factory ChargeStationState.loading() = ChargeStationLoading;

  const factory ChargeStationState.screenLoading() = ChargeStationScreenLoading;

  const factory ChargeStationState.scanQrSuccess({ConnectorsModel? data}) =
      ChargeStationScanQrSuccess;

  const factory ChargeStationState.nothing() = ChargeStationNothing;

  const factory ChargeStationState.logged(
      {required List<ChargeStationModel> data,
      bool? isFinish}) = ChargeStationLogged;

  const factory ChargeStationState.searchHistoryLogged(
          {required List<ChargeStationModel> data}) =
      ChargeStationSearchHistoryLogged;

  const factory ChargeStationState.mapLogged(
      {required RouteDirectionModel data}) = ChargeStationMapLogged;

  const factory ChargeStationState.chargeBoxInAppLogged(
      {ChargeBoxDataModel? data}) = ChargeBoxInAppLogged;

  const factory ChargeStationState.detailChargeStation(
      {ChargeStationModel? data}) = DetailChargeStationLogged;

  const factory ChargeStationState.detailChargeBox(
      {required List<ChargeBoxModel> data}) = DetailChargeBoxLogged;

  const factory ChargeStationState.chargeBox(
      {required ChargeBoxModel data}) = ChargeBoxLogged;

  const factory ChargeStationState.loggedChargeTypes(
      {required List<ChargeTypeModel> data}) = LoggedChargeTypes;

  const factory ChargeStationState.connectorsLogged({ChargeBoxModel? data}) =
      ChargeStationConnectorsLogged;

  const factory ChargeStationState.error({String? error}) = ChargeStationError;
}
