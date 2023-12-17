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
        return 'AutoRespondeSMS Debug';
      case Flavor.production:
        return 'Auto Responde SMS';
      default:
        return 'title';
    }
  }

}
