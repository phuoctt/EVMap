import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/data/api/interceptors/app_socket.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_state.dart';
import 'package:rabbitevc/models/base/base_response.dart';
import 'package:rabbitevc/models/charge_station/charge_model.dart';
import 'package:rabbitevc/models/transaction/transaction_model.dart';
import 'package:rabbitevc/service/api_service/charge_station_service/charge_station_api_service.dart';
import 'package:rabbitevc/service/di/di.dart';
import 'package:rabbitevc/service/local_storage/local_storage_service.dart';
import 'package:rabbitevc/share/constants/constant.dart';
import 'package:rabbitevc/share/enums/charge_status_type.dart';
import 'package:rabbitevc/share/enums/charge_step_type.dart';
import 'package:rabbitevc/share/enums/socket_type.dart';
import 'package:rabbitevc/share/extensions/date_time.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/widget/loading_screen.dart';
import 'package:socket_io_client/socket_io_client.dart';

import '../../../service/api_service/transaction_service/transaction_api_service.dart';

class ChargeCubit extends Cubit<ChargeState> {
  ChargeCubit() : super(const ChargeInit());
  Socket socket = AppSocket().setupSocket();

  void onNextCharge(TransactionModel model) {
    emit(const ChargeNothing());
    emit(const ChargeStep3Logged(stepType: ChargeStepType.step4));
    emit(const ChargeNothing());
    emit(StartChargeLogged(data: model));
    emit(const ChargingLogged(
        data: null, chargeStatusType: ChargeStatusType.charging));
  }

  void onNextChargeTransaction(TransactionModel model) {
    emit(const ChargeNothing());
    emit(const ChargeStep3Logged(stepType: ChargeStepType.step4));
  }

  void onConnectSocket(String? chargeBoxId) {
    emit(const ChargeInit());
    const events = SocketType.values;
    socket.connect();
    socket.onConnecting((data) {
      print('onConnecting');
    });
    socket.onConnect((_) {
      print('onConnect');
    });
    socket.onDisconnect((data) {
      print('onDisconnect');
    });
    for (final event in events) {
      socket.on(createChargeBoxChanel(chargeBoxId, event.event), (json) {
        print('socket ios -- ${json.toString()}');
        try {
          ChargeDataModel data = ChargeDataModel.fromJson(json);
          final status = ChargeStatusType.fromTypeStatus(data.status);

          // data = data.copyWith(status: ChargeStatusType.charging.status);
          emit(ChargingLogged(data: data, chargeStatusType: status));

          if (data.meta != null) {
            emit(ChargingLogged(
                data: data.copyWith(status: ChargeStatusType.charging.status),
                chargeStatusType: status));
            // return;
          }
          switch (status) {
            case ChargeStatusType.available:
              emit(const ChargeStep1Logged(stepType: ChargeStepType.step1));
              break;
            case ChargeStatusType.preparing:
              emit(const ChargeStep1Logged(stepType: ChargeStepType.step2));
              break;
            case ChargeStatusType.suspendedEV:
              break;
            case ChargeStatusType.charging:
              emit(const ChargeStep3Logged(stepType: ChargeStepType.step4));
              break;
            case ChargeStatusType.finishing:
              // transactionId = 0;
              // LoadingScreen.close();
              // emit(const ChargeStop());
              // emit(const ChargingLogged());
              // emit(const StartChargeLogged(data: null));
              // emit(const ChargeInit());
              break;
            case ChargeStatusType.unavailable:
              // TODO: Handle this case.
              break;
            case null:
            // TODO: Handle this case.
              break;
            case ChargeStatusType.offline:
              // TODO: Handle this case.
          }
        } catch (e) {}
      });
    }
  }

  void onConnectCharge(String? chargeBoxId) {
    emit(const ChargeLoading());
  }

  Future<void> onLockCar(String? chargeBoxId, num? connectorId) async {
    try {
      emit(const ChargeLoading());
      final res = await getIt
          .get<ChargeStationApiService>()
          .updateUserAccess(chargeBoxId: chargeBoxId, connectorId: connectorId);
      if (res.code == ApiStatus.success) {
        emit(const ChargeStep2Logged(stepType: ChargeStepType.step3));
      } else {
        emit(ChargeError(error: res.message));
      }
    } catch (e) {
      emit(ChargeError(error: S.text?.error_something_went_wrong_try_again));
    }
  }

  Future<void> onStartCharge(String? chargeBoxId, num? connectorId) async {
    try {
      emit(const ChargeLoadingScreen());
      Map<String, dynamic> params = {
        'charge_box_id': chargeBoxId,
        'connector_id': connectorId,
      };
      final res = await getIt.get<TransactionApiService>().startTxn(params);
      if (res.code == ApiStatus.success && res.data?.transaction_id != null) {
        final transactionId = res.data?.transaction_id ?? 0;
        final transactionModel = TransactionModel(
            transaction_id: transactionId,
            connector_id: connectorId,
            charge_box_id: chargeBoxId,
            start_event_timestamp: DateTime.now().toUtc().getDateOnly());
        getIt.get<LocalStorageService>().setString(
            LocalStorageKey.transactionModel.name,
            jsonEncode(transactionModel.toJson()));
        emit(StartChargeLogged(data: transactionModel));
      } else {
        emit(ChargeError(error: res.message));
      }
    } catch (e) {
      emit(ChargeError(error: S.text?.error_something_went_wrong_try_again));
    }
  }

  Future<void> onTopCharge(String? chargeBoxId, num? transactionId) async {
    try {
      emit(const ChargeLoadingScreen());

      Map<String, dynamic> params = {
        'charge_box_id': chargeBoxId,
        'transaction_id': transactionId,
      };
      BaseResponse? res =
          await getIt.get<TransactionApiService>().stopTxn(params);
      if (res.code != ApiStatus.success) {
        res = await getIt
            .get<TransactionApiService>()
            .stopForce(transactionId, params);
      }
      if (res.code == ApiStatus.success) {
        getIt
            .get<LocalStorageService>()
            .setString(LocalStorageKey.transactionModel.name, '');
        LoadingScreen.close();
        emit(ChargeStop(transactionId: transactionId));
        emit(const ChargingLogged());
        emit(const StartChargeLogged(data: null));
        emit(const ChargeInit());
      } else {
        emit(ChargeError(error: res.message));
      }
    } catch (e) {
      emit(ChargeError(error: S.text?.error_something_went_wrong_try_again));
    }
  }

  void disConnect() {
    if (socket.active) socket.disconnect();
  }

  String createChargeBoxChanel(dynamic chargeBoxId, dynamic event) {
    return '$chargeBoxId#@#$event';
  }
}
