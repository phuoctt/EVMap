import 'package:flutter/material.dart';
import 'package:rabbitevc/theme/colors.dart';

enum ConnectorBoxType {
  available('Available', AppColors.primaryColor),
  charging('Charging', Colors.amber),
  offline('Offline', Colors.red);

  const ConnectorBoxType(this.status, this.color);

  final String status;
  final Color color;

  static ConnectorBoxType fromTypeStatus(String? status) {
    try {
      return ConnectorBoxType.values
          .firstWhere((element) => status == element.status);
    } catch (e) {
      return ConnectorBoxType.offline;
    }
  }
}
