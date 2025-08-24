import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rabbitevc/models/charge_station/charge_model.dart';
import 'package:rabbitevc/models/transaction/transaction_model.dart';
import 'package:rabbitevc/share/enums/charge_status_type.dart';
import 'package:rabbitevc/share/enums/charge_step_type.dart';

part 'charge_state.freezed.dart';

@freezed
class ChargeState with _$ChargeState {
  const factory ChargeState.init() = ChargeInit;
  const factory ChargeState.nothing() = ChargeNothing;

  const factory ChargeState.loading() = ChargeLoading;

  const factory ChargeState.loadingScreen() = ChargeLoadingScreen;

  const factory ChargeState.step1Logged({
    required ChargeStepType stepType,
  }) = ChargeStep1Logged;

  const factory ChargeState.step2Logged({
    required ChargeStepType stepType,
  }) = ChargeStep2Logged;

  const factory ChargeState.step3Logged({
    required ChargeStepType stepType
  }) = ChargeStep3Logged;

  const factory ChargeState.chargeConnectorLogged({ChargeDataModel? data}) =
      ChargeConnectorLogged;

  const factory ChargeState.startChargeLogged({TransactionModel? data}) =
  StartChargeLogged;

  const factory ChargeState.chargingLogged(
      {ChargeDataModel? data,
      ChargeStatusType? chargeStatusType}) = ChargingLogged;

  const factory ChargeState.stopCharge({num? transactionId}) = ChargeStop;

  const factory ChargeState.error({String? error}) = ChargeError;
}
