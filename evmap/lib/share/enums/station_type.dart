import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';

enum ChargeBoxStatus {
  available(1),
  inUse(20),
  maintenance(30),
  unavailable(99);

  final int value;

  const ChargeBoxStatus(this.value);

  static ChargeBoxStatus fromValue(int? value) {
    return ChargeBoxStatus.values.firstWhere(
      (e) => e.value == value,
      orElse: () => ChargeBoxStatus.available,
    );
  }
  String? get statusText {
    switch (this) {
      case available:
        return S.text?.charge_status_available;
      case inUse:
        return S.text?.charge_status_finishing;
      case unavailable:
        return S.text?.charge_status_unavailable;
      case maintenance:
        return S.text?.charge_status_maintenance;
    }
  }
  Color get statusColor {
    switch (this) {
      case available:
        return AppColors.primaryColor;
      case inUse:
        return Colors.amber;
      case unavailable:
        return Colors.red;
      case maintenance:
        return Colors.amber;
    }
  }
}

enum ConnectorStatus {
  available(10),
  inUse(20),
  maintenance(30),
  unavailable(99);

  final int value;
  const ConnectorStatus(this.value);

  static ConnectorStatus fromValue(int value) {
    return ConnectorStatus.values.firstWhere(
          (e) => e.value == value,
      orElse: () => ConnectorStatus.available,
    );
  }
  String? get statusText {
    switch (this) {
      case available:
        return S.text?.charge_status_available;
      case inUse:
        return S.text?.charge_status_finishing;
      case unavailable:
        return S.text?.charge_status_unavailable;
      case maintenance:
        return S.text?.charge_status_maintenance;
    }
  }
  Color get statusColor {
    switch (this) {
      case available:
        return AppColors.primaryColor;
      case inUse:
        return Colors.amber;
      case unavailable:
        return Colors.red;
      case maintenance:
        return Colors.amber;
    }
  }
}

