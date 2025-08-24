// import 'dart:developer';
// import 'dart:io';
//
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';
// import 'package:rabbitevc/features/charge_station/cubit/charge_station_cubit.dart';
// import 'package:rabbitevc/features/charge_station/cubit/charge_station_state.dart';
// import 'package:rabbitevc/features/charge_station/screens/charge_screen.dart';
// import 'package:rabbitevc/generated_images.dart';
// import 'package:rabbitevc/route/navigator.dart';
// import 'package:rabbitevc/share/utils/localization_utils.dart';
// import 'package:rabbitevc/theme/colors.dart';
// import 'package:rabbitevc/theme/style.dart';
// import 'package:rabbitevc/widget/appbar.dart';
// import 'package:rabbitevc/widget/loading_screen.dart';
// import 'package:rabbitevc/widget/notify_dialog.dart';
//
// class QrCodeScreen extends StatefulWidget {
//   static const route = '/qrcode';
//
//   const QrCodeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<StatefulWidget> createState() => _QrCodeScreenState();
// }
//
// class _QrCodeScreenState extends State<QrCodeScreen> {
//   Barcode? result;
//   QRViewController? controller;
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//
//   ChargeStationCubit get _cubit => BlocProvider.of(context);
//   bool scanning = false;
//   final TextEditingController _textController = TextEditingController();
//
//   // In order to get hot reload to work we need to pause the camera if the platform
//   // is android, or resume the camera if the platform is iOS.
//   @override
//   void reassemble() {
//     super.reassemble();
//     if (Platform.isAndroid) {
//       controller!.pauseCamera();
//     }
//     controller!.resumeCamera();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<ChargeStationCubit, ChargeStationState>(
//       listener: (context, state) {
//         LoadingScreen.close();
//         state.whenOrNull(
//             screenLoading: () => LoadingScreen.show(),
//             scanQrSuccess: (val) async {
//               final result = await pushNamed(ChargeScreen.route, arguments: {
//                 'chargeBoxId': val?.charge_box_id,
//                 'connectorId': val?.connector_id,
//               });
//               scanning = false;
//             },
//             error: (message) async {
//               final result = await NotifyDialog.showMessage(content: message);
//               scanning = false;
//             });
//       },
//       child: Scaffold(
//         body: _buildQrView(context),
//       ),
//     );
//
//     // return Scaffold(
//     //   body: Column(
//     //     children: <Widget>[
//     //       Expanded(flex: 4, child: _buildQrView(context)),
//     //       Expanded(
//     //         flex: 1,
//     //         child: FittedBox(
//     //           fit: BoxFit.contain,
//     //           child: Column(
//     //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     //             children: <Widget>[
//     //               if (result != null)
//     //                 Text(
//     //                     'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
//     //               else
//     //                 const Text('Scan a code'),
//     //               Row(
//     //                 mainAxisAlignment: MainAxisAlignment.center,
//     //                 crossAxisAlignment: CrossAxisAlignment.center,
//     //                 children: <Widget>[
//     //                   Container(
//     //                     margin: const EdgeInsets.all(8),
//     //                     child: ElevatedButton(
//     //                         onPressed: () async {
//     //                           await controller?.toggleFlash();
//     //                           setState(() {});
//     //                         },
//     //                         child: FutureBuilder(
//     //                           future: controller?.getFlashStatus(),
//     //                           builder: (context, snapshot) {
//     //                             return Text('Flash: ${snapshot.data}');
//     //                           },
//     //                         )),
//     //                   ),
//     //                   Container(
//     //                     margin: const EdgeInsets.all(8),
//     //                     child: ElevatedButton(
//     //                         onPressed: () async {
//     //                           await controller?.flipCamera();
//     //                           setState(() {});
//     //                         },
//     //                         child: FutureBuilder(
//     //                           future: controller?.getCameraInfo(),
//     //                           builder: (context, snapshot) {
//     //                             if (snapshot.data != null) {
//     //                               return Text(
//     //                                   'Camera facing ${describeEnum(snapshot.data!)}');
//     //                             } else {
//     //                               return const Text('loading');
//     //                             }
//     //                           },
//     //                         )),
//     //                   )
//     //                 ],
//     //               ),
//     //               Row(
//     //                 mainAxisAlignment: MainAxisAlignment.center,
//     //                 crossAxisAlignment: CrossAxisAlignment.center,
//     //                 children: <Widget>[
//     //                   Container(
//     //                     margin: const EdgeInsets.all(8),
//     //                     child: ElevatedButton(
//     //                       onPressed: () async {
//     //                         await controller?.pauseCamera();
//     //                       },
//     //                       child: const Text('pause',
//     //                           style: TextStyle(fontSize: 20)),
//     //                     ),
//     //                   ),
//     //                   Container(
//     //                     margin: const EdgeInsets.all(8),
//     //                     child: ElevatedButton(
//     //                       onPressed: () async {
//     //                         await controller?.resumeCamera();
//     //                       },
//     //                       child: const Text('resume',
//     //                           style: TextStyle(fontSize: 20)),
//     //                     ),
//     //                   )
//     //                 ],
//     //               ),
//     //             ],
//     //           ),
//     //         ),
//     //       )
//     //     ],
//     //   ),
//     // );
//   }
//
//   Widget _buildQrView(BuildContext context) {
//     // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
//     var scanArea =MediaQuery.of(context).size.height * 0.34;
//     // To ensure the Scanner view is properly sizes after rotation
//     // we need to listen for Flutter SizeChanged notification and update controller
//     return Stack(
//       children: [
//         // Container(
//         //   height: double.infinity,
//         //   width: double.infinity,
//         //   color: Colors.black,
//         // ),
//         QRView(
//           key: qrKey,
//           onQRViewCreated: _onQRViewCreated,
//           // overlayMargin: EdgeInsets.only(bottom: 330),
//           overlay: QrScannerOverlayShape(
//               borderColor: Colors.white,
//               borderRadius: 10,
//               borderLength: 30,
//               borderWidth: 10,
//               cutOutSize: scanArea),
//           onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
//         ),
//         Align(
//           alignment: Alignment.topCenter,
//           child: SafeArea(
//               child: Column(
//             children: [
//               SizedBox(
//                   height: 56,
//                   child: BaseAppBar(
//                     title: S.text?.qr_title,
//                   )),
//               Text(
//                 S.text?.qr_content ?? '',
//                 style: AppTextStyle.bodyLight.copyWith(color: Colors.white),
//               ),
//             ],
//           )),
//         ),
//         SafeArea(
//           minimum: const EdgeInsets.only(bottom: 16),
//           child: Align(
//             alignment: Alignment.bottomCenter,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Row(
//                   children: [
//                     Expanded(
//                         child: _buildButton(
//                             onTap: onInputCode,
//                             icon: IcSvg.icQrInput,
//                             text: S.text?.qr_code_box)),
//                     Expanded(
//                         child: _buildButton(
//                             icon: IcSvg.icQrAlbum,
//                             text: S.text?.qr_upload_image,
//                             onTap: () async {
//                               final XFile? file = await ImagePicker()
//                                   .pickImage(source: ImageSource.gallery);
//                               if (file != null) {
//                                 LoadingScreen.show();
//                                 final decoder = QRCodeDartScanDecoder(
//                                   formats:
//                                       QRCodeDartScanDecoder.acceptedFormats,
//                                 );
//                                 LoadingScreen.close();
//                                 final result = await decoder.decodeFile(file);
//                                 if(result?.text.isNotEmpty ==true){
//                                   _cubit.onScanQrCode(result?.text);
//                                 }else{
//                                   NotifyDialog.showMessage(content: S.text?.error_qr_code);
//                                 }
//                               }
//                             })),
//                   ],
//                 ),
//                 const SizedBox(height: 24),
//                 GestureDetector(
//                   onTap: pop,
//                   child: Container(
//                     width: 44,
//                     height: 44,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(width: 1, color: Colors.white),
//                     ),
//                     child: Icon(
//                       Icons.close,
//                       color: Colors.white,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }
//
//   void onInputCode()  {
//     _textController.clear();
//      NotifyDialog.showConfirm(
//         title: S.text?.qr_code_box_title,
//         widgetContent: TextField(
//           controller: _textController,
//           decoration: InputDecoration(hintText: S.text?.qr_code_box_hint_text),
//         ),
//         onPressed: () {
//           if (_textController.text.isEmpty) {
//             NotifyDialog.showMessage(content: 'Vui lòng nhập mã trụ');
//           } else {
//             _cubit.onScanQrCode(_textController.text);
//           }
//         });
//   }
//
//   Widget _buildButton({String? icon, String? text, GestureTapCallback? onTap}) {
//     return GestureDetector(
//       onTap:onTap,
//       child: Column(
//         children: [
//           Container(
//             width: 40,
//             height: 40,
//             padding: const EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: GreyColor.grey800.withOpacity(0.5),
//             ),
//             child: SvgPicture.asset(icon ?? ''),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             text ?? '',
//             style: AppTextStyle.bodyMedium.copyWith(color: Colors.white),
//           )
//         ],
//       ),
//     );
//   }
//
//   void _onQRViewCreated(QRViewController controller) {
//     setState(() {
//       this.controller = controller;
//     });
//     controller.scannedDataStream.listen((scanData) {
//       if (scanData.code?.isNotEmpty == true && !scanning) {
//         _cubit.onScanQrCode(scanData.code!);
//         scanning = true;
//       }
//       // setState(() {
//       //   result = scanData;
//       // });
//     });
//   }
//
//   void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
//     log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
//     if (!p) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('no Permission')),
//       );
//     }
//   }
//
//   @override
//   void dispose() {
//     controller?.dispose();
//     _textController.dispose();
//     super.dispose();
//   }
// }
