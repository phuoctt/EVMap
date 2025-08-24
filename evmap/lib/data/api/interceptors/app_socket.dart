import 'package:rabbitevc/service/di/di.dart';
import 'package:rabbitevc/service/local_storage/local_storage_service.dart';
import 'package:rabbitevc/share/constants/constant.dart';
import 'package:socket_io_client/socket_io_client.dart';

class AppSocket {
  Socket setupSocket() {
    Socket socket = io(
      AppConfig.urlSocketDev,
      <String, dynamic>{
        "transports": ["websocket"],
        "autoConnect": true,
        "reconnectionDelayMax": 3,
        "path": '/ws-api',
        "timeout": 1000,
        "query": {
          "token": getIt
              .get<LocalStorageService>()
              .getString(LocalStorageKey.saveLogin.name)
        },
      },
    );
    return socket;
  }
}
