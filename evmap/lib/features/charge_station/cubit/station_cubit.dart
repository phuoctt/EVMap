import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_state.dart';
import 'package:rabbitevc/features/charge_station/cubit/station_state.dart';
import 'package:rabbitevc/models/charge_station/charge_station_model.dart';
import 'package:rabbitevc/models/charging_station/station_model.dart';
import 'package:rabbitevc/service/api_service/charge_station_service/charge_station_api_service.dart';
import 'package:rabbitevc/service/di/di.dart';
import 'package:rabbitevc/share/constants/constant.dart';
import 'package:rabbitevc/share/utils/app_utils.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';

class StationCubit extends Cubit<StationState> {
  final Station? data;

  StationCubit({this.data}) : super(const StationLoading()) {
    if (data == null) {
      onLoadStations();
    }
  }

  Future<void> onLoadStations() async {
    try {
      emit(const StationLoading());
      final res =
          await getIt.get<ChargeStationApiService>().stations(limit: 1000);
      if (res.code == ApiStatus.success) {
        emit(StationLogged(data: List.from(res.data?.list ?? [])));
      } else {
        emit(StationError(error: res.errors?.messageApp));
      }
    } catch (err) {
      emit(StationError(error: S.text?.error_something_went_wrong_try_again));
    }
  }

  Future<void> onLoadDetailStation(num? id) async {
    try {
      emit(const StationLoading());
      final res =
          await getIt.get<ChargeStationApiService>().detailStation(id: id);
      if (res.code == ApiStatus.success) {
        emit(StationDetaiLogged(data: res.data ?? data!));
      } else {
        emit(StationError(error: res.errors?.messageApp));
      }
    } catch (err) {
      emit(StationError(error: S.text?.error_something_went_wrong_try_again));
    }
  }
}
