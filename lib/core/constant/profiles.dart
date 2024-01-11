class Profiles {
  static _DevelopProfiles developProfiles = _DevelopProfiles();
  static _StageProfiles stageProfiles = _StageProfiles();
  static _ProductionProfiles productionProfiles = _ProductionProfiles();
}

class _DevelopProfiles {
  // TODO: URL Setup
  /// Replace the value of [baseUrl] with the `develop` URL of your project.
  final String baseUrl =
      "http://dev.baseprojectjava.thesunflowerlab.com:9014/api";
}

class _StageProfiles {
  // TODO: URL Setup
  /// Replace the value of [baseUrl] with the `develop` URL of your project.
  final String baseUrl = "http://stage.baseprojectjava.thesunflowerlab.com/api";
}

class _ProductionProfiles {
  // TODO: URL Setup
  /// Replace the value of [baseUrl] with the `develop` URL of your project.
  final String baseUrl = "http://prod.baseprojectjava.thesunflowerlab.com/api";
}
