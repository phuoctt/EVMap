import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:collection/collection.dart';

import 'package:rabbitevc/data/model/booking_request.dart';
import 'package:rabbitevc/features/booking/cubit/booking_state.dart';
import 'package:rabbitevc/features/home/cubit/feed_state.dart';
import 'package:rabbitevc/features/profile/profile/cubit/profile_cubit.dart';
import 'package:rabbitevc/models/booking/slot_model.dart';
import 'package:rabbitevc/models/charge_station/charge_box_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/service/api_service/charge_station_service/charge_station_api_service.dart';
import 'package:rabbitevc/service/api_service/user_service/user_api_service.dart';
import 'package:rabbitevc/service/di/di.dart';
import 'package:rabbitevc/share/constants/constant.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';

class FeedCubit extends Cubit<FeedState> {
  FeedCubit() : super(const FeedLoading());

  Future<void> onLoadFeed() async {
    try {
      emit(const FeedLoading());
      final res = await getIt.get<UserApiService>().feed();

      if (res.code == ApiStatus.success) {
        emit(FeedLogged(data: List.from(res.data?.list ?? [])));
      } else {
        emit(FeedError(error: res.message));
      }
    } catch (err) {
      emit(FeedError(error: S.text?.error_something_went_wrong_try_again));
    }
  }
}
