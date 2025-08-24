import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/data/model/topup_request.dart';
import 'package:rabbitevc/features/top_up/cubit/top_up_state.dart';
import 'package:rabbitevc/models/payment/paymentl_model.dart';
import 'package:rabbitevc/service/api_service/payment_service/payment_api_service.dart';
import 'package:rabbitevc/service/di/di.dart';
import 'package:rabbitevc/share/constants/constant.dart';
import 'package:rabbitevc/share/enums/payment_method_type.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';

class TopUpCubit extends Cubit<TopUpState> {
  TopUpCubit() : super(const TopUpLoading());
  PaymentModel? data;

  Future<void> onTopUp(TopUpRequest request) async {
    try {
      emit(const TopUpLoadingScreen());
      final res = await getIt.get<PaymentApiService>().topUp(request);
      if (res.code == ApiStatus.success) {
        data = res.data;
        emit(TopUpSuccess(data: res.data));
      } else {
        emit(TopUpError(error: res.message));
      }
    } catch (err) {
      emit(TopUpError(error: S.text?.error_something_went_wrong_try_again));
    }
  }

  Future<void> onLoadDetailPayment(num? id) async {
    try {
      emit(const TopUpLoading());
      final res = await getIt.get<PaymentApiService>().detailPayment(id);
      if (res.code == ApiStatus.success) {
        emit(TopUpDetailPayment(data: res.data));
      } else {
        emit(TopUpError(error: res.message));
      }
    } catch (err) {
      emit(TopUpError(error: S.text?.error_something_went_wrong_try_again));
    }
  }

  Future<void> onCheckStatus(num? id) async {
    try {
      emit(const TopUpLoading());
      final res = await getIt.get<PaymentApiService>().paymentStatus(id);
      if (res.code == ApiStatus.success) {
        final paymentCode = res.data?.paymentStatusName;
        if (paymentCode?.toLowerCase() ==
                'Thanh toán thành công'.toLowerCase() ||
            paymentCode?.toLowerCase() ==
                'Thanh toán thất bại'.toLowerCase()) {
          emit(TopUpStatusSuccess(
              data: res.data
                  ?.copyWith(paymentMethodCode: PaymentMethodType.zalopay.name)));
        }

      } else {
        // emit(TopUpError(error: res.message));
      }
    } catch (err) {
      // emit(TopUpError(error: S.text?.error_something_went_wrong_try_again));
    }
  }
}
