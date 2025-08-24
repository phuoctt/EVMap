// import 'package:rabbitevc/service/di/di.dart';
// import 'package:rabbitevc/share/enums/socket_type.dart';
// import 'package:socket_io_client/socket_io_client.dart';
//
// class AppSocketIO {
//   void setup() async {
//     _contentSocket();
//   }
//
//   void _contentSocket() {
//     final events = SocketType.values;
//     final chargeBoxId = "solaz_center_root_01";
//     final token =
//         'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjY0LCJwdiI6MSwic3RldmVfdXNlcl9pZCI6MTIsInN0ZXZlX3RhZ19pZCI6InRyYW50dWFuLXRhZyIsInBob25lX251bWJlciI6IjA5Njk1MDA2MTkiLCJpYXQiOjE3MDMzMzQ3NjgsImV4cCI6MTcxMTk3NDc2OH0.Q93mmUGOSER8iEkMmtASSrML5h_w7uXi4KphQtncoCk';
//     Socket socket = io(
//       'https://dev-ws.rabbitevc.vn',
//       <String, dynamic>{
//         "transports": ["websocket"],
//         "autoConnect": true,
//         "reconnectionDelayMax": 3,
//         "path": '/ws-api',
//         "timeout": 1000,
//         "query": {"token": token},
//       },
//     );
//     socket.connect();
//     socket.onConnect((_) {
//       print('connected');
//       socket.emit('get-data', 0);
//     });
//     socket.onDisconnect((data) {
//       print('onDisconnect');
//     });
//     for(final event in events){
//       socket.on(
//           createChargeBoxChanel(
//               chargeBoxId, event.event), (data) {
//         print(data);
//       });
//     }
//
//   }
//
//   String createChargeBoxChanel(dynamic chargeBoxId, dynamic event) {
//     return '$chargeBoxId#@#$event';
//   }
//
//
// }
