import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rabbitevc/models/booking/booking_model.dart';
import 'package:rabbitevc/models/booking/reason_model.dart';
import 'package:rabbitevc/models/booking/slot_model.dart';
import 'package:rabbitevc/models/charge_station/charge_model.dart';
import 'package:rabbitevc/models/transaction/transaction_model.dart';
import 'package:rabbitevc/share/enums/charge_status_type.dart';
import 'package:rabbitevc/share/enums/charge_step_type.dart';

part 'booking_state.freezed.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState.nothing() = BookingNothing;

  const factory BookingState.loading() = BookingLoading;

  const factory BookingState.loadingScreen() = BookingLoadingScreen;

  const factory BookingState.reasonLogged({required List<ReasonModel> data}) =
      BookingReasionLogged;

  const factory BookingState.reservationHistoryLogged(
      {required List<BookingModel> data,
      bool? isFinish}) = ReservationHistoryLogged;

  const factory BookingState.slotsLogged({required List<SlotDataModel> data}) =
      BookingSlotsLogged;

  const factory BookingState.bookingSuccess({SlotDataModel? detail}) =
      BookingSuccess;

  const factory BookingState.bookingCancel({num? idBooking}) = BookingCancel;

  const factory BookingState.error({String? error}) = BookingError;
}
