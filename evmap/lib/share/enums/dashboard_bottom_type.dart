// ignore_for_file: constant_identifier_names

// enum SettingProfileType {
//   account_manager('계정관리'),
//   alarm('알람'),
//   policy('이용 약관 및 개인 정보 보호 정책');
//
//   const SettingProfileType(this.title);
//
//   final String title;
// }

import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';

enum DashboardBottomType {
  home,
  chargingStation,
  qr,
  history,
  profile;

  String? get title {
    switch (this) {
      case DashboardBottomType.home:
        return S.text?.dashboard_home;
      case DashboardBottomType.chargingStation:
        return S.text?.dashboard_station;
      case DashboardBottomType.qr:
        return S.text?.dashboard_qr;
      case DashboardBottomType.history:
        return S.text?.dashboard_history;
      case DashboardBottomType.profile:
        return S.text?.dashboard_profile;
    }
  }
  String? get icon {
    switch (this) {
      case DashboardBottomType.home:
        return IcSvg.icDashboardHome;
      case DashboardBottomType.chargingStation:
        return IcSvg.icDashboardStation;
      case DashboardBottomType.qr:
        return IcSvg.icDashboardStation;
      case DashboardBottomType.history:
        return IcSvg.icDashboardHistory;
      case DashboardBottomType.profile:
        return IcSvg.icDashboardProfile;

    }
  }


}

