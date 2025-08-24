import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/transaction/cubit/transaction_state.dart';
import 'package:rabbitevc/models/user/user_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/service/api_service/charge_station_service/charge_station_api_service.dart';
import 'package:rabbitevc/service/api_service/transaction_service/transaction_api_service.dart';
import 'package:rabbitevc/service/di/di.dart';
import 'package:rabbitevc/service/local_storage/local_storage_service.dart';
import 'package:rabbitevc/share/constants/constant.dart';
import 'package:rabbitevc/share/enums/transaction_active_type.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(const TransactionLoading());
  UserModel? user;

  Future<void> onCheckActive() async {
    try {
      emit(const TransactionLoading());
      final res = await getIt.get<TransactionApiService>().checkActive();

      if (res.code == ApiStatus.success) {
        emit(TransactionCheckActiveLogged(ids: res.data?.ids));
        if (res.data?.ids?.isNotEmpty == true) {
          onLoadDetailTransaction(res.data?.ids?.first);
        } else {
          getIt
              .get<LocalStorageService>()
              .setString(LocalStorageKey.transactionModel.name, '');
          final res = await getIt.get<TransactionApiService>().checkNotPay();
          if (res.code == ApiStatus.success) {
            emit(TransactionCheckActiveLogged(
                ids: res.data?.ids, type: TransactionActiveType.active));
            if (res.data?.ids?.isNotEmpty == true) {
              onLoadDetailBill(res.data?.ids?.first);
            } else {
              final res =
                  await getIt.get<ChargeStationApiService>().checkReservation();
              if (res.code == ApiStatus.success) {
                emit(ReservationkActiveLogged(
                    data: res.data?.list?.isNotEmpty == true
                        ? res.data?.list?.first
                        : null));
              }
            }
          } else {
            emit(TransactionError(error: res.errors?.messageApp));
          }
        }
      } else {
        emit(TransactionError(error: res.errors?.messageApp));
      }
    } catch (err) {
      emit(TransactionError(
          error: S.text?.error_something_went_wrong_try_again));
    }
  }

  Future<void> onLoadDetailTransaction(num? transactionId) async {
    try {
      emit(const TransactionLoading());
      final res = await getIt
          .get<TransactionApiService>()
          .detailTransaction(transactionId);
      if (res.code == ApiStatus.success) {
        emit(TransactionDetailLogged(data: res.data));
      } else {
        emit(TransactionError(error: res.errors?.messageApp));
      }
    } catch (err) {
      emit(TransactionError(
          error: S.text?.error_something_went_wrong_try_again));
    }
  }

  Future<void> onLoadDetailBill(num? transactionId) async {
    try {
      final res = await getIt
          .get<TransactionApiService>()
          .detailTransactionBill(transactionId);
      if (res.code == ApiStatus.success) {
        emit(DetailBillLogged(data: res.data));
      } else {
        emit(TransactionError(error: res.errors?.messageApp));
      }
    } catch (err) {
      emit(TransactionError(
          error: S.text?.error_something_went_wrong_try_again));
    }
  }

  Future<void> onPayment(num? idBill) async {
    try {
      emit(const TransactionLoadingScreen());
      final res = await getIt.get<TransactionApiService>().payment(idBill);
      if (res.code == ApiStatus.success) {
        emit(const TransactionPaymentSuccess());
        BlocProvider.of<TransactionCubit>(navigatorKey.currentContext!)
            .onCheckActive();
      } else {
        emit(TransactionError(error: res.message));
      }
    } catch (err) {
      emit(TransactionError(
          error: S.text?.error_something_went_wrong_try_again));
    }
  }

  Future<void> onLoadChargingBill(num? id) async {
    try {
      emit(const TransactionLoading());

      final res = await getIt.get<TransactionApiService>().chargingBill(id);
      if (res.code == ApiStatus.success) {
        emit(ChargingBillLogged(data: res.data));
      } else {
        emit(TransactionError(error: res.message));
      }
    } catch (err) {
      emit(TransactionError(
          error: S.text?.error_something_went_wrong_try_again));
    }
  }
}
