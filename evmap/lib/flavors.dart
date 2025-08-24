enum Flavor {
  dev,
  stag,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Supercharge Dev';
      case Flavor.stag:
        return 'Supercharge Stag';
      case Flavor.prod:
        return 'Supercharge';
      default:
        return 'title';
    }
  }

}
