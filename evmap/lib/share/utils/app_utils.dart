import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:device_info_plus/device_info_plus.dart';

class AppUtils {
  static Future<String> getDeviceId() async {
    var deviceInfo = DeviceInfoPlugin();
    late String deviceId;

    try {
      if (Platform.isIOS) {
        var iosDeviceInfo = await deviceInfo.iosInfo;
        deviceId = iosDeviceInfo.identifierForVendor!;
      } else if (Platform.isAndroid) {
        var androidDeviceInfo = await deviceInfo.androidInfo;
        deviceId = androidDeviceInfo.id;
      } else {
        deviceId = 'null';
      }
    } catch (e) {
      if (kIsWeb) {
        return 'web';
      }
    }
    return deviceId;
  }

  static Future<void> launchLink(String url) async {
    // if (!await launchUrl(Uri.parse(url))) {
    //   throw Exception('Could not launch');
    // }
  }

  static String formatHHMMSS(int seconds, {bool showSeconds = false}) {
    if (seconds >= 0) {
      int hours = (seconds / 3600).truncate();
      seconds = (seconds % 3600).truncate();
      int minutes = (seconds / 60).truncate();

      String hoursStr = (hours).toString().padLeft(2, '0');
      String minutesStr = (minutes).toString().padLeft(2, '0');
      String secondsStr = (seconds % 60).toString().padLeft(2, '0');

      if (hours == 0) {
        return "$minutesStr ${S.text?.booking_minute} ${showSeconds ? ' $secondsStr ${S.text?.booking_second}' : ''}";
      }
      if (minutes == 0) {
        return "$hoursStr ${S.text?.booking_hour} ${showSeconds ? ' $secondsStr ${S.text?.booking_second}' : ''}";
      }
      return "$hoursStr ${S.text?.booking_hour} $minutesStr ${S.text?.booking_minute}${showSeconds ? ' $secondsStr ${S.text?.booking_second}' : ''}";
    } else {
      return "";
    }
  }

  static Future<Position?> getPosition() async {
    try {
      Position? position;
      bool isLocationServiceEnabled =
          await Geolocator.isLocationServiceEnabled();
      if (isLocationServiceEnabled) {
        position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);
      }
      return position;
    } catch (e) {
      return null;
    }
  }

  static void getStringQrCode() async {
    final XFile? file =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    // if (file != null) {
    //   final decoder = QRCodeDartScanDecoder(
    //     formats: [
    //       // You can restrict specific formats.
    //       BarcodeFormat.QR_CODE,
    //       BarcodeFormat.AZTEC,
    //       BarcodeFormat.DATA_MATRIX,
    //       BarcodeFormat.PDF_417,
    //       BarcodeFormat.CODE_39,
    //       BarcodeFormat.CODE_93,
    //       BarcodeFormat.CODE_128,
    //       BarcodeFormat.EAN_8,
    //       BarcodeFormat.EAN_13,
    //     ],
    //   );
    //   final result1 = await decoder.decodeFile(file);
    //
    //   print('object');
    // }
  }
}
