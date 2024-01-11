import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:stock_management/core/constant/sky_apis.dart';
import 'package:stock_management/core/constant/webservices/app_config.dart';
import 'package:stock_management/util/utilities.dart';

class MockAdapter extends IOHttpClientAdapter {
  final IOHttpClientAdapter _adapter = IOHttpClientAdapter();

  @override
  Future<ResponseBody> fetch(RequestOptions options,
      Stream<Uint8List>? requestStream, Future? cancelFuture) async {
    String url = options.uri.path;
    final isMockFlavour = (AppConfig.getInstance().flavor == Environment.mock);

    if (isMockFlavour) {
      if (url == SKYAPIs.authenticate) {
        return await _convertToResponseBody(SKYAPIs.mock.kLogin);
      } else if (url == SKYAPIs.forgetPassword) {
        return _convertToResponseBody();
      } else if (url == SKYAPIs.profile) {
        return await _convertToResponseBody(SKYAPIs.mock.kProfile);
      } else if (url.contains(SKYAPIs.userListing.split("?").first)) {
        return await _convertToResponseBody(SKYAPIs.mock.kUserList);
      } else if (url == SKYAPIs.getCountryCodes) {
        return await _convertToResponseBody(SKYAPIs.mock.kCountryCode);
      } else if (url == SKYAPIs.registerInit) {
        return await _convertToResponseBody(SKYAPIs.mock.kRegisterInit);
      } else if (url == SKYAPIs.registerFinish) {
        return await _convertToResponseBody(SKYAPIs.mock.kRegisterFinish);
      } else if (url == SKYAPIs.editProfile) {
        return await _convertToResponseBody(SKYAPIs.mock.kUpdateProfile);
      } else if (url == SKYAPIs.divisionResponse) {
        return await _convertToResponseBody(SKYAPIs.mock.kDivisonResponse);
      } else if (url == SKYAPIs.teamResponse) {
        return await _convertToResponseBody(SKYAPIs.mock.kTeamResponse);
      } else if (url == SKYAPIs.saveResponse) {
        return await _convertToResponseBody(SKYAPIs.mock.kSaveResponse);
      }else if (url == SKYAPIs.usermodelResponse) {
        return await _convertToResponseBody(SKYAPIs.mock.kUserModelRespose);
      }
      else {
        return _adapter.fetch(options, requestStream, cancelFuture);
      }
    } else {
      return _adapter.fetch(options, requestStream, cancelFuture);
    }
  }

  Future<ResponseBody> _convertToResponseBody([String? assetUrl]) async {
    //! This method will create the response
    //! Don't forget to pass the json type in header, otherwise will throw the error
    var headers = {
      Headers.contentTypeHeader: [Headers.jsonContentType],
    };
    String responseStr = '';
    if (assetUrl != null) {
      responseStr = await Utilities.parseStringFromAssets(assetUrl);
    }
    return ResponseBody.fromString(responseStr, 200, headers: headers);
  }

  @override
  void close({bool force = false}) {}
}
