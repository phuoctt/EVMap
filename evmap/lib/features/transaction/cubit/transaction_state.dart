import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rabbitevc/models/booking/booking_model.dart';
import 'package:rabbitevc/models/history/detail_bill_model.dart';
import 'package:rabbitevc/models/transaction/transaction_model.dart';
import 'package:rabbitevc/models/user/user_model.dart';
import 'package:rabbitevc/share/enums/transaction_active_type.dart';

part 'transaction_state.freezed.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState.loading() = TransactionLoading;

  const factory TransactionState.logged(UserModel user) = TransactionLogged;

  const factory TransactionState.checkActive(
      {List<num>? ids,
      TransactionActiveType? type}) = TransactionCheckActiveLogged;

  const factory TransactionState.reservationActiveLogged(
      {BookingModel? data}) = ReservationkActiveLogged;

  const factory TransactionState.detailLogged({TransactionModel? data}) =
      TransactionDetailLogged;

  const factory TransactionState.detailBillLogged({DetailBillModel? data}) =
  DetailBillLogged;

  const factory TransactionState.chargingBillLogged(
      {DetailBillModel? data}) = ChargingBillLogged;

  const factory TransactionState.loadingScreen() = TransactionLoadingScreen;

  const factory TransactionState.paymentSuccess() = TransactionPaymentSuccess;

  const factory TransactionState.error({String? error}) = TransactionError;
}
