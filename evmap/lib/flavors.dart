enum Flavor {
  dev,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'EVMap Dev';
      case Flavor.prod:
        return 'EVMap';
      default:
        return 'title';
    }
  }

}
