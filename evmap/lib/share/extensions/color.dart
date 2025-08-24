import 'package:flutter/material.dart';

extension ColorExtension on Color? {
  String stringColor() {
    String colorStr = toString().split('(0xff')[1].split(')')[0];
    return colorStr;
  }

  static Color? fromHex(String? hexColorString,{Color?  defaultWhenNull}) {
    if (hexColorString == null) return null;
    try {
      hexColorString = hexColorString.replaceAll('#', '');
      if (hexColorString.length == 6) {
        hexColorString = 'FF$hexColorString';
      }
      return Color(int.parse(hexColorString, radix: 16));
    } catch (_) {
      return defaultWhenNull;
    }
  }
}
