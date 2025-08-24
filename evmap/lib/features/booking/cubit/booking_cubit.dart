import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:collection/collection.dart';

import 'package:rabbitevc/data/model/booking_request.dart';
import 'package:rabbitevc/features/booking/cubit/booking_state.dart';
import 'package:rabbitevc/features/profile/profile/cubit/profile_cubit.dart';
import 'package:rabbitevc/features/transaction/cubit/transaction_cubit.dart';
import 'package:rabbitevc/models/booking/booking_model.dart';
import 'package:rabbitevc/models/booking/slot_model.dart';
import 'package:rabbitevc/models/charge_station/charge_box_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/service/api_service/charge_station_service/charge_station_api_service.dart';
import 'package:rabbitevc/service/di/di.dart';
import 'package:rabbitevc/share/constants/constant.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit() : super(const BookingLoading());

  Future<void> onLoadReservationHistory({
    int limit = 20,
    int page = 1,
    bool isLoading = true,
    List<BookingModel>? oldData,
  }) async {
    try {
      if (isLoading) {
        emit(const BookingLoading());
      }
      final res = await getIt
          .get<ChargeStationApiService>()
          .reservationHistory(limit: limit, page: page);

      if (res.code == ApiStatus.success) {
        List<BookingModel> data = List.from(oldData ?? [])
          ..addAll(List.from(res.data?.list ?? []));
        emit(
            ReservationHistoryLogged(data: data, isFinish: res.data?.isFinish));
      } else {
        emit(BookingError(error: res.message));
      }
    } catch (err) {
      emit(BookingError(error: S.text?.error_something_went_wrong_try_again));
    }
  }

  Future<void> onLoadReason() async {
    try {
      emit(const BookingLoading());
      final res = await getIt.get<ChargeStationApiService>().reasons();

      if (res.code == ApiStatus.success) {
        emit(BookingReasionLogged(data: List.from(res.data ?? [])));
      } else {
        emit(BookingError(error: res.message));
      }
    } catch (err) {
      emit(BookingError(error: S.text?.error_something_went_wrong_try_again));
    }
  }

  Future<void> onBooking(BookingRequest? request) async {
    try {
      final re = request?.toRequest();
      emit(const BookingLoadingScreen());
      final res = await getIt.get<ChargeStationApiService>().booking(re);

      if (res.code == ApiStatus.success) {
        emit(BookingSuccess(
            detail: SlotDataModel(
          userId: BlocProvider.of<ProfileCubit>(navigatorKey.currentContext!)
              .user
              ?.id
              ?.toInt(),
          id: res.data?.id,
          startDatetime: re?.start_datetime,
          expiryDatetime: re?.expiry_datetime,
        )));
        BlocProvider.of<TransactionCubit>(navigatorKey.currentContext!)
            .onCheckActive();
      } else {
        emit(BookingError(error: res.message));
      }
    } catch (err) {
      emit(BookingError(error: S.text?.error_something_went_wrong_try_again));
    }
  }

  Future<void> onLoadSlots({
    ChargeBoxModel? chargeBox,
    ConnectorsModel? connector,
    required DateTime dateTime,
    bool isLoading = true,
  }) async {
    try {
      if (isLoading) {
        emit(const BookingLoading());
      }
      final res = await getIt.get<ChargeStationApiService>().slots(
          id: chargeBox?.charge_box_id,
          dateFrom:
              DateTime(dateTime.year, dateTime.month, dateTime.day, 0, 0, 0)
                  .toUtc(),
          dateTo:
              DateTime(dateTime.year, dateTime.month, dateTime.day, 23, 59, 59)
                  .toUtc());

      if (res.code == ApiStatus.success) {
        final item = res.data?.connectors?.firstWhereOrNull(
            (element) => element.connectorId == connector?.connector_id);
        emit(BookingSlotsLogged(data: List.from(item?.slots ?? [])));
      } else {
        emit(BookingError(error: res.message));
      }
    } catch (err) {
      emit(BookingError(error: S.text?.error_something_went_wrong_try_again));
    }
  }

  Future<void> onLoadSlotsLocal(
      {required List<SlotDataModel> data, required SlotDataModel item}) async {
    emit(const BookingLoading());
    emit(BookingSlotsLogged(
        data: List.from(data)
          ..add(item.copyWith(
            startDatetime: item.startDatetime?.toUtc(),
            expiryDatetime: item.expiryDatetime?.toUtc(),
          ))));
  }

  Future<void> onCancelBooking(num? idBooking) async {
    try {
      emit(const BookingLoadingScreen());
      final res =
          await getIt.get<ChargeStationApiService>().cancelBooking(idBooking);
      if (res.code == ApiStatus.success) {
        emit(BookingCancel(idBooking: idBooking));
        BlocProvider.of<TransactionCubit>(navigatorKey.currentContext!)
            .onCheckActive();
      } else {
        emit(BookingError(error: res.message));
      }
    } catch (err) {
      emit(BookingError(error: S.text?.error_something_went_wrong_try_again));
    }
  }
}
