import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';

enum HomeMenuType {
  chargingStation,
  chargingHistory,
  information,
  promotion,
  file,
  setting,
  tutorial;

  String? get title {
    switch (this) {
      case HomeMenuType.chargingStation:
        return 'Trạm sạc';
      case HomeMenuType.chargingHistory:
        return 'Lịch sử sạc';
      case HomeMenuType.information:
        return 'Thông tin xe';
      case HomeMenuType.promotion:
        return 'Khuyến mãi';
      case HomeMenuType.file:
        return 'Hồ sơ';
      case HomeMenuType.setting:
        return 'Cài đặt';
      case HomeMenuType.tutorial:
        return 'Hướng dẫn\nsử dụng';
    }
  }

  String? get icon {
    switch (this) {
      case HomeMenuType.chargingStation:
        return IcPng.icHomeChargingStation;
      case HomeMenuType.chargingHistory:
        return IcPng.icHomeChargingHistory;
      case HomeMenuType.information:
        return IcPng.icHomeInfo;
      case HomeMenuType.promotion:
        return IcPng.icHomePromotion;
      case HomeMenuType.file:
        return IcPng.icHomePaper;
      case HomeMenuType.setting:
        return IcPng.icHomeSetting;
      case HomeMenuType.tutorial:
        return IcPng.icHomeTutorial;
    }
  }
}
