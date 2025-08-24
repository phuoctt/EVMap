enum ChargeBoxEventType {
  sendMessage('SEND_MESSAGE'),
  statusNotification('STATUS_NOTIFICATION'),
  bootNotification('BOOT_NOTIFICATION'),
  startTransaction('START_TRANSACTION'),
  stopTransaction('STOP_TRANSACTION'),
  meterValues('METER_VALUES'),
  connected('CONNECTED'),
  closed('CLOSED'),
  transportError('TRANSPORT_ERROR');

  const ChargeBoxEventType(this.status);

  final String status;

  static ChargeBoxEventType? fromTypeStatus(String? status) {
    try {
      return ChargeBoxEventType.values
          .firstWhere((element) => status == element.status);
    } catch (e) {
      return null;
    }
  }
}
