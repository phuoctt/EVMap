import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rabbitevc/models/history/detail_bill_model.dart';
import 'package:rabbitevc/models/history/history_model.dart';

part 'history_state.freezed.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.loading() = HistoryLoading;

  const factory HistoryState.historyTransactionLogged(
      {List<HistoryModel>? data, bool? isFinish}) = HistoryTransactionLogged;

  const factory HistoryState.error({String? error}) = HistoryError;
}
