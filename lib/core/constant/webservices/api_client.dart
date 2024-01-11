import 'package:dio/dio.dart';
import 'package:stock_management/core/constant/webservices/app_config.dart';
import 'package:stock_management/core/constant/webservices/dashboard_services.dart';
import 'package:stock_management/core/constant/webservices/mock_adaptaor.dart';
import 'package:stock_management/util/logger.dart';

class ApiClient {
  static late final DashBoardService dashBoardService;
  

  static void initServices() {
    final dio = Dio()
      ..options = BaseOptions(baseUrl: AppConfig.getInstance().apiBaseUrl)
      ..httpClientAdapter = MockAdapter();
    dio.interceptors.addAll([
      // NetworkInterceptor(),
      // ExceptionInterceptor(),
      // HeaderInterceptor(),
    ]);

    dashBoardService = DashBoardService(dio);
    
  }

  static void logPrint(Object object) {
    log.info(object);
  }
}
