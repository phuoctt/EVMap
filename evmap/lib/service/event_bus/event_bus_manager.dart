import 'package:event_bus/event_bus.dart';

class EventBusManager {
  static final eventBus = EventBus();
}

enum EventType {
  chargeStation,
  findChargeStation,
  authenticated
}
enum EventTabType {
  history
}
