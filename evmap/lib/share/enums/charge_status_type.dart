import 'package:flutter/material.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';

enum ChargeStatusType {
  available('Available', AppColors.primaryColor),
  offline('Offline', Colors.red),
  preparing('Preparing', Colors.amber),
  suspendedEV('SuspendedEV', Colors.amber),
  charging('Charging', Colors.amber),
  finishing('Finishing', Colors.amber),
  unavailable('Unavailable', Colors.red);

  const ChargeStatusType(
    this.status,
    this.color,
  );

  final String status;
  final Color color;

  static ChargeStatusType? fromTypeStatus(String? status) {
    try {
      return ChargeStatusType.values
          .firstWhere((element) => status == element.status);
    } catch (e) {
      return null;
    }
  }

  String? get statusText {
    switch (this) {
      case ChargeStatusType.available:
        return S.text?.charge_status_available;
      case ChargeStatusType.preparing:
        return S.text?.charge_status_preparing;
      case ChargeStatusType.suspendedEV:
        return S.text?.charge_status_supendedEV;
      case ChargeStatusType.charging:
        return S.text?.charge_status_charging;
      case ChargeStatusType.finishing:
        return S.text?.charge_status_finishing;
      case ChargeStatusType.unavailable:
        return S.text?.charge_status_unavailable;
      case ChargeStatusType.offline:
        return S.text?.charge_status_office;
    }
  }
}
