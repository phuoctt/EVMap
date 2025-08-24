import 'package:flutter/material.dart';
import 'package:rabbitevc/generated_images.dart';

import 'package:rabbitevc/theme/colors.dart';

enum HistoryReservationType {
  cancel(40),
  create(10),
  end(30);

  const HistoryReservationType(this.status);

  final int status;

  static HistoryReservationType? fromTypeStatus(int? status) {
    try {
      return HistoryReservationType.values
          .firstWhere((element) => status == element.status);
    } catch (e) {
      return null;
    }
  }

  Color? get color {
    switch (this) {
      case HistoryReservationType.cancel:
        return const Color(0xffFA4140);
      case HistoryReservationType.create:
        return AppColors.semanticColor;
      case HistoryReservationType.end:
        return GreyColor.grey300;
    }
  }

  String? get icon {
    switch (this) {
      case HistoryReservationType.cancel:
        return IcSvg.icDelete;
      case HistoryReservationType.create:
        return IcSvg.icClock;
      case HistoryReservationType.end:
        return IcSvg.icClock;


      // return IcSvg.icCheck;
    }
  }
}
