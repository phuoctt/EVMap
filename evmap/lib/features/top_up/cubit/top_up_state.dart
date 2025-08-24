import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rabbitevc/models/payment/paymentl_model.dart';

part 'top_up_state.freezed.dart';

@freezed
class TopUpState with _$TopUpState {
  const factory TopUpState.loading() = TopUpLoading;

  const factory TopUpState.loadingScreen() = TopUpLoadingScreen;

  const factory TopUpState.success({PaymentModel? data}) = TopUpSuccess;

  const factory TopUpState.statusSuccess({PaymentModel? data}) = TopUpStatusSuccess;

  const factory TopUpState.detailPayment({PaymentModel? data}) = TopUpDetailPayment;

  const factory TopUpState.error({String? error}) = TopUpError;
}
