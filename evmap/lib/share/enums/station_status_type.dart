import 'package:rabbitevc/share/utils/localization_utils.dart';

enum StationStatusType {
  all(null),
  available(1),
  busy(2),
  offline(3),
  error(4);

  const StationStatusType(this.type);

  final int? type;

  String? get title {
    switch (this) {
      case StationStatusType.all:
        return S.text?.text_all;
      case StationStatusType.available:
        return S.text?.station_status_available;
      case StationStatusType.busy:
        return S.text?.station_status_busy;
      case StationStatusType.offline:
        return S.text?.station_status_offline;
      case StationStatusType.error:
        return S.text?.station_status_error;
    }
  }
}
