// import 'dart:async';
//
// import 'package:flutter/material.dart';
//
// import 'package:flutter/foundation.dart';
//
// bool STATUS_NETWORK = true;
//
// class NetworkConnectivity {
//   NetworkConnectivity._internal();
//
//   factory NetworkConnectivity() {
//     return _singleton;
//   }
//
//   late StreamSubscription<ConnectivityResult> _listener;
//
//   ConnectivityResult? _newConnectState;
//
//   ConnectivityResult? _oldConnectState;
//
//   int connectChangeNumber = 0;
//
//   static final NetworkConnectivity _singleton = NetworkConnectivity._internal();
//
//   void init() async {
//     if (defaultTargetPlatform == TargetPlatform.android) {
//       _newConnectState = await Connectivity().checkConnectivity();
//
//       if (!hasInternet(_newConnectState) && STATUS_NETWORK) {
//         STATUS_NETWORK = false;
//         showSnackBar(STATUS_NETWORK);
//       }
//
//       _listener = Connectivity().onConnectivityChanged.listen(
//         (status) {
//           updateState(status);
//           if (!hasInternet(status) && STATUS_NETWORK) {
//             STATUS_NETWORK = false;
//             showSnackBar(STATUS_NETWORK);
//           } else {
//             if (hasChangedState()) {
//               pop();
//               STATUS_NETWORK = true;
//               showSnackBar(STATUS_NETWORK);
//             }
//           }
//         },
//       );
//     }
//
//     if (defaultTargetPlatform == TargetPlatform.iOS) {
//       _newConnectState = await Connectivity().checkConnectivity();
//
//       if (!hasInternet(_newConnectState) && STATUS_NETWORK) {
//         STATUS_NETWORK = false;
//         showSnackBar(STATUS_NETWORK);
//       }
//
//       _listener = Connectivity().onConnectivityChanged.listen(
//         (status) {
//           updateConnectChangeNumber();
//           updateState(status);
//
//           /// fix case: Auto reports network connection when opening the app
//
//           if (connectChangeNumber == 1) return;
//
//           if (connectChangeNumber == 2 && !hasInternet(status) && STATUS_NETWORK) {
//             STATUS_NETWORK = false;
//             showSnackBar(STATUS_NETWORK);
//             // NoInternetPopup.show();
//             // showSnackBar(SnackBarNetwork(state: ConnectivityState.unavailable));
//             return;
//           }
//
//           if (!hasInternet(status) && STATUS_NETWORK) {
//             STATUS_NETWORK = false;
//             showSnackBar(STATUS_NETWORK);
//           } else {
//             if (hasChangedState()) {
//               pop();
//               STATUS_NETWORK = true;
//               showSnackBar(STATUS_NETWORK);
//             }
//           }
//         },
//       );
//     }
//   }
//
//   static void showSnackBar(bool val) {
//     if (val) {
//       ScaffoldMessenger.of(navigatorKey.currentContext!).hideCurrentSnackBar();
//       return;
//     }
//     var snackbar = SnackBar(
//       content: Text(
//         S.text?.error_network ?? '',
//         textAlign: TextAlign.center,
//       ),
//       margin: const EdgeInsets.only(
//         left: 8,
//         right: 8,
//         bottom: 12,
//       ),
//       duration: const Duration(days: 1),
//       padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
//       behavior: SnackBarBehavior.floating,
//       backgroundColor: GreyColor.grey900.withOpacity(0.8),
//     );
//     ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(snackbar);
//   }
//
//   bool isFirstTouch() {
//     if (defaultTargetPlatform == TargetPlatform.iOS) {
//       return connectChangeNumber <= 2;
//     }
//     return false;
//   }
//
//   updateConnectChangeNumber() {
//     if (connectChangeNumber > 4) {
//       return;
//     }
//     ++connectChangeNumber;
//   }
//
//   void dispose() {
//     _listener.cancel();
//   }
//
//   static bool hasInternet(ConnectivityResult? status) =>
//       status == ConnectivityResult.ethernet ||
//       status == ConnectivityResult.wifi ||
//       status == ConnectivityResult.mobile;
//
//   bool hasChangedState() =>
//       _newConnectState != null && (_oldConnectState != _newConnectState);
//
//   void updateState(ConnectivityResult state) {
//     _oldConnectState = _newConnectState;
//     _newConnectState = state;
//   }
//
//   static Future<bool> checkConnective() async {
//     var connectState = await Connectivity().checkConnectivity();
//
//     return hasInternet(connectState);
//   }
// }
//
// enum ConnectivityState { available, unavailable }
//
// class ConnectivityTitle {
//   static String available = S.text?.network_online ?? '';
//   static String unavailable = S.text?.network_offline ?? '';
// }
//
// extension ConnectivityExtension on ConnectivityState {
//   String get title => _getTitle();
//
//   Icon get getIcon => _getIcon();
//
//   String _getTitle() {
//     switch (this) {
//       case ConnectivityState.available:
//         return ConnectivityTitle.available;
//       case ConnectivityState.unavailable:
//         return ConnectivityTitle.unavailable;
//     }
//   }
//
//   _getIcon() {
//     switch (this) {
//       case ConnectivityState.available:
//         return const Icon(Icons.wifi, color: Colors.white);
//       case ConnectivityState.unavailable:
//         return const Icon(Icons.network_check, color: Colors.white);
//     }
//   }
// }
//
// class SnackBarNetwork extends SnackBar {
//   SnackBarNetwork({
//     required this.state,
//     Key? key,
//   }) : super(
//           key: key,
//           backgroundColor: Colors.black.withOpacity(0.9),
//           duration: const Duration(seconds: 2),
//           dismissDirection: DismissDirection.vertical,
//           content: Row(
//             children: [
//               state.getIcon,
//               const SizedBox(
//                 width: 12,
//               ),
//               Text(state.title),
//             ],
//           ),
//           behavior: SnackBarBehavior.floating,
//           margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//         );
//   final ConnectivityState state;
// }
