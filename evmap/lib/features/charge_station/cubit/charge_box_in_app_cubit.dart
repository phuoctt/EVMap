import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/data/api/interceptors/app_socket.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_state.dart';
import 'package:rabbitevc/models/charge_station/charge_box_data_model.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:socket_io_client/socket_io_client.dart';

class ChargeBoxInAppCubit extends Cubit<ChargeStationState> {
  ChargeBoxInAppCubit() : super(const ChargeStationLoading());
  Socket socket = AppSocket().setupSocket();

  void onConnectSocket() {
    try {
      socket.on('evc-charge-box', (json) {
        ChargeBoxDataModel data = ChargeBoxDataModel.fromJson(json);
        emit(ChargeBoxInAppLogged(data: data));
        print('${data.toJson()}--${data.event_data?.toJson()}');
      });
      socket.onConnect((data) {
        print('onConnect');
      });
      socket.onDisconnect((data) {
        print('onDisconnect');
      });
    } catch (err) {
      emit(ChargeStationError(
          error: S.text?.error_something_went_wrong_try_again));
    }
  }

  void onDisconnectSocket() {
    socket.ondisconnect();
    socket.dispose();
  }
}
