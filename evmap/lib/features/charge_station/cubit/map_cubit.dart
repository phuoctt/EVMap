import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_state.dart';
import 'package:rabbitevc/features/dashboard/widgets/map_ui.dart';
import 'package:rabbitevc/service/api_service/charge_station_service/charge_station_api_service.dart';
import 'package:rabbitevc/service/di/di.dart';
import 'package:rabbitevc/share/constants/constant.dart';
import 'package:rabbitevc/share/utils/app_utils.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';

class MapCubit extends Cubit<ChargeStationState> {
  MapCubit() : super(const ChargeStationLoading());

  Future<void> onLoadDirection(double? latitude, double? longitude) async {
    try {
      emit(const ChargeStationLoading());
      final myPosition = await AppUtils.getPosition();

      final res = await getIt.get<ChargeStationApiService>().direction(
          myLat: myPosition?.latitude,
          myLng: myPosition?.longitude,
          lat: latitude,
          lng: longitude);
      if (res.code == 'Ok' || res.routes?.isNotEmpty == true) {
        emit(ChargeStationMapLogged(data: res.routes!.first));
      } else {
        emit(ChargeStationError(
            error: S.text?.error_something_went_wrong_try_again));
      }
    } catch (err) {
      emit(ChargeStationError(
          error: S.text?.error_something_went_wrong_try_again));
    }
  }
}
