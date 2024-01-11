import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:stock_management/core/constant/profiles.dart';
import 'package:stock_management/core/constant/strings.dart';
import 'package:stock_management/util/logger.dart';
import 'package:stock_management/util/utilities.dart';



typedef MethodResponse<T> = void Function(T value);

enum Environment { develop, stage, mock, production }

class AppConfig {
  Environment flavor;
  final String apiBaseUrl;

  AppConfig({required this.flavor, required this.apiBaseUrl});

  static late AppConfig _instance;

  static Future<bool> configure() async {
    try {
      final String? flavor = await (MethodChannel(SKYStrings.channel.kApp)
          .invokeMethod<String>(SKYStrings.channelMethod.kFlavor));
      if (flavor != null) {
        log.info('STARTED WITH FLAVOR $flavor');
        _setupEnvironment(Utilities.enumFromString(flavor, Environment.values));
        return true;
      } else {
        return false;
      }
    } catch (e) {
      FirebaseCrashlytics.instance
          .recordFlutterError(FlutterErrorDetails(exception: e));
      log.severe("Failed: '$e'.");
      log.severe('FAILED TO LOAD FLAVOR');
      return false;
    }
  }

  static void _setupEnvironment(Environment flavorName) async {
    late String baseUrl;
    late Environment flavor;
    if (flavorName == Environment.develop) {
      baseUrl = Profiles.developProfiles.baseUrl;
      flavor = flavorName;
    } else if (flavorName == Environment.stage) {
      baseUrl = Profiles.stageProfiles.baseUrl;
      flavor = flavorName;
    } else if (flavorName == Environment.mock) {
      baseUrl = ''; //! Pass test url will
      flavor = flavorName;
    } else if (flavorName == Environment.production) {
      baseUrl = Profiles.productionProfiles.baseUrl;
      flavor = flavorName;
    }
    _instance = AppConfig(flavor: flavor, apiBaseUrl: baseUrl);
    log.info('APP CONFIGURED FOR: $flavorName');
  }

  static AppConfig getInstance() => _instance;
}
