
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stock_management/core/constant/sky_apis.dart';
import 'package:stock_management/data/model/dashboard_response.dart';


part 'dashboard_services.g.dart';

@RestApi(baseUrl: '')
abstract class DashBoardService {
  factory DashBoardService(Dio dio, {String baseUrl}) = _DashBoardService;

  @GET(SKYAPIs.dashBoardResponse)
  Future<HttpResponse<List<DashBoardResponse>>> dashBoardResponse();

  
}
