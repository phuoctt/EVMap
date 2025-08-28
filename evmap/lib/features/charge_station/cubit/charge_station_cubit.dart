import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_state.dart';
import 'package:rabbitevc/models/charge_station/charge_station_model.dart';
import 'package:rabbitevc/service/api_service/charge_station_service/charge_station_api_service.dart';
import 'package:rabbitevc/service/di/di.dart';
import 'package:rabbitevc/share/constants/constant.dart';
import 'package:rabbitevc/share/utils/app_utils.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';

class ChargeStationCubit extends Cubit<ChargeStationState> {
  ChargeStationCubit() : super(const ChargeStationLoading());

  Future<void> onLoadDetailChargeBox(dynamic id) async {
    try {
      emit(const ChargeStationLoading());
      final res = await getIt.get<ChargeStationApiService>().connectors(id: id);
      if (res.code == ApiStatus.success && res.data != null) {
        emit(ChargeBoxLogged(data: res.data!));
      } else {
        emit(ChargeStationError(error: res.errors?.messageApp));
      }
    } catch (err) {
      emit(ChargeStationError(
          error: S.text?.error_something_went_wrong_try_again));
    }
  }

  Future<void> onScanQrCode(String? code) async {
    try {
      String? qrCode = code;
      if (code?.contains('rabbitevc.vn') == true) {
        List<String> parts = code?.split("/") ?? [];
        if (parts.isNotEmpty) {
          qrCode = parts.last;
        }
      }
      emit(const ChargeStationScreenLoading());
      final res = await getIt
          .get<ChargeStationApiService>()
          .findConnector(qrCode: qrCode);
      if (res.code == ApiStatus.success) {
        emit(ChargeStationScanQrSuccess(data: res.data));
      } else {
        if (res.code == 404) {
          emit(ChargeStationError(error: S.text?.error_qr_code));
          return;
        }
        emit(ChargeStationError(error: res.message));
      }
    } catch (err) {
      emit(ChargeStationError(
          error: S.text?.error_something_went_wrong_try_again));
    }
  }

  Future<void> onLoadConnectors(dynamic id) async {
    try {
      emit(const ChargeStationLoading());
      final res = await getIt.get<ChargeStationApiService>().connectors(id: id);
      if (res.code == ApiStatus.success) {
        emit(ChargeStationConnectorsLogged(data: res.data));
      } else {
        emit(ChargeStationError(error: res.errors?.messageApp));
      }
    } catch (err) {
      emit(ChargeStationError(
          error: S.text?.error_something_went_wrong_try_again));
    }
  }

  Future<void> onLoadChargeBox(num? id) async {
    try {
      final res = await getIt
          .get<ChargeStationApiService>()
          .detailChargeBox(stationId: id);
      if (res.code == ApiStatus.success) {
        emit(DetailChargeBoxLogged(data: List.from(res.data?.list ?? [])));
      } else {
        emit(ChargeStationError(error: res.errors?.messageApp));
      }
    } catch (err) {
      emit(ChargeStationError(
          error: S.text?.error_something_went_wrong_try_again));
    }
  }

  Future<void> onLoadDetailCharStation(num? id) async {
    try {
      Position? position = await AppUtils.getPosition();

      final res = await getIt
          .get<ChargeStationApiService>()
          .detailChargeStation(
              id: id, lat: position?.latitude, long: position?.longitude);
      if (res.code == ApiStatus.success) {
        emit(DetailChargeStationLogged(data: res.data));
      } else {
        emit(ChargeStationError(error: res.errors?.messageApp));
      }
    } catch (err) {
      emit(ChargeStationError(
          error: S.text?.error_something_went_wrong_try_again));
    }
  }

  Future<void> onLoadSearchHistory(List<ChargeStationModel>? data) async {
    emit(const ChargeStationLoading());
    emit(ChargeStationSearchHistoryLogged(data: List.from(data ?? [])));
  }

  Future<void> onLoadCharStation(
      {double? lat,
      double? long,
      String? keyword,
      int? typeId,
      int? statusId}) async {
    try {

      final res = await getIt.get<ChargeStationApiService>().listChargeStation(
          lat: lat,
          long: long,
          keyword: keyword,
          typeId: typeId,
          statusId: statusId);

      if (res.code == ApiStatus.success) {
        emit(ChargeStationLogged(data: List.from(res.data?.list ?? [])));
      } else {
        emit(ChargeStationError(error: res.errors?.messageApp));
      }
    } catch (err) {
      emit(ChargeStationError(
          error: S.text?.error_something_went_wrong_try_again));
    }
  }
}
