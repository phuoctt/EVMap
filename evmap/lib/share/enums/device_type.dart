import 'package:flutter/material.dart';

bool isPhone = true;
enum DeviceType {
  phone(),
  tablet();

  const DeviceType();

  static DeviceType getDeviceType() {
    final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
    return data.size.shortestSide < 600 ? DeviceType.phone : DeviceType.tablet;
  }
}
