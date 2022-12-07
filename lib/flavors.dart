enum Flavor {
  DEVELOPMENT,
  STAGING,
  PRODUCTION,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.DEVELOPMENT:
        return 'Flavor Demo Dev';
      case Flavor.STAGING:
        return 'Flavor Demo Staging';
      case Flavor.PRODUCTION:
        return 'Flavor Demo';
      default:
        return 'title';
    }
  }

  static String get baseURL {
    switch (appFlavor) {
      case Flavor.DEVELOPMENT:
        return 'http.xyz.development';
      case Flavor.STAGING:
        return 'http.xyz.staging';
      case Flavor.PRODUCTION:
        return 'http.xyz.production';
      default:
        return 'http.xyz.development';
    }
  }
}
