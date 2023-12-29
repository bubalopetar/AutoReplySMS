enum Flavor {
  debuging,
  production,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.debuging:
        return 'AutoReplySMS Debug';
      case Flavor.production:
        return 'Auto Reply SMS';
      default:
        return 'title';
    }
  }
}
