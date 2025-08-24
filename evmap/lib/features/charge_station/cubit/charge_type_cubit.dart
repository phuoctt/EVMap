import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_state.dart';
import 'package:rabbitevc/service/api_service/charge_station_service/charge_station_api_service.dart';
import 'package:rabbitevc/service/di/di.dart';
import 'package:rabbitevc/share/constants/constant.dart';
import 'package:rabbitevc/share/utils/app_utils.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';

class ChargeTypeCubit extends Cubit<ChargeStationState> {
  ChargeTypeCubit() : super(const ChargeStationLoading());

  Future<void> onLoadChargeType() async {
    try {
      emit(const ChargeStationLoading());
      final res = await getIt.get<ChargeStationApiService>().chargeTypes();
      if (res.code == ApiStatus.success) {
        emit(LoggedChargeTypes(data: List.from(res.data ?? [])));
      } else {
        emit(ChargeStationError(error: res.errors?.messageApp));
      }
    } catch (err) {
      emit(ChargeStationError(
          error: S.text?.error_something_went_wrong_try_again));
    }
  }
}
