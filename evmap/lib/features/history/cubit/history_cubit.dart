import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/history/cubit/history_state.dart';
import 'package:rabbitevc/models/history/history_model.dart';
import 'package:rabbitevc/service/api_service/transaction_service/transaction_api_service.dart';
import 'package:rabbitevc/service/di/di.dart';
import 'package:rabbitevc/share/constants/constant.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';

class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit() : super(const HistoryLoading());

  Future<void> onLoadTransactionHistory(
      {num limit = 20,
      num page = 1,
      bool isLoading = true,
      List<HistoryModel>? oldData}) async {
    try {
      if (isLoading) {
        emit(const HistoryLoading());
      }
      final res = await getIt
          .get<TransactionApiService>()
          .historyTransaction(limit: limit, page: page);
      if (res.code == ApiStatus.success) {
        List<HistoryModel> data = List.from(oldData ?? [])
          ..addAll(List.from(res.data?.list ?? []));
        emit(
            HistoryTransactionLogged(data: data, isFinish: res.data?.isFinish));
      } else {
        emit(HistoryError(error: res.errors?.messageApp));
      }
    } catch (err) {
      emit(HistoryError(error: S.text?.error_something_went_wrong_try_again));
    }
  }
}
