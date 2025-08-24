import 'package:flutter/material.dart';
import 'package:rabbitevc/theme/colors.dart';

enum SocketType {
  changeBoxSendMessage('CHARGE_BOX_SEND_MESSAGE'),
  changeBoxConnected('CHARGE_BOX_CONNECTED'),
  changeBoxClosed('CHARGE_BOX_CLOSED'),
  changeBoxTransportError('CHARGE_BOX_TRANSPORT_ERROR'),
  changeBoxStartTransaction('CHARGE_BOX_START_TRANSACTION'),
  changeBoxStopTransaction('CHARGE_BOX_STOP_TRANSACTION'),
  changeBoxSendStatusNotification('CHARGE_BOX_SEND_STATUS_NOTIFICATION'),
  changeBoxBoxSendBootNotification('CHARGE_BOX_SEND_BOOT_NOTIFICATION'),
  changeBoxSendMeterValues('CHARGE_BOX_SEND_METER_VALUES');

  const SocketType(this.event);

  final String event;
}
