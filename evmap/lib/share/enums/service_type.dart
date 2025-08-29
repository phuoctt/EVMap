enum StationServiceType {
  coffee(100),
  lunch(101),
  motel(200),
  wifi(201),
  parking(202),
  toilet(203),
  billiards(300),
  other(999);

  final int value;
  const StationServiceType(this.value);

  static StationServiceType fromValue(int? value) {
    return StationServiceType.values.firstWhere(
          (e) => e.value == value,
      orElse: () => StationServiceType.other,
    );
  }

  String get displayName {
    switch (this) {
      case StationServiceType.coffee:
        return "Cà phê";
      case StationServiceType.lunch:
        return "Ăn trưa";
      case StationServiceType.motel:
        return "Nhà nghỉ";
      case StationServiceType.wifi:
        return "Wi-Fi";
      case StationServiceType.parking:
        return "Bãi đỗ xe";
      case StationServiceType.toilet:
        return "Nhà vệ sinh";
      case StationServiceType.billiards:
        return "Bida";
      case StationServiceType.other:
        return "Khác";
    }
  }


}
