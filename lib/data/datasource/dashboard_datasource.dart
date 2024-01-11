
// import 'package:retrofit/dio.dart';
// import 'package:stock_management/core/constant/webservices/api_client.dart';
// import 'package:stock_management/core/error/exception.dart';
// import 'package:stock_management/data/model/dashboard_response.dart';
// import 'package:stock_management/util/extensions.dart';

// abstract class DashBoardDatasource {
  
//   Future<List<DashBoardResponse>> dashBoardResponse();
// }

// class DashBoardDatasourceImpl implements DashBoardDatasource {
//   @override
//   Future<List<DashBoardDatasource>> dashBoardResponse() async {
//     try {
//       HttpResponse<List<DashBoardDatasource>> response =
//           await ApiClient.dashBoardService.dashBoardResponse();
//       if (response.isSuccessful) {
//         return response.data;
//       } else {
//         throw ServerException();
//       }
//     } on Failure catch (_) {
//       rethrow;
//     } catch (error) {
//       throw UnknownException(error.toString());
//     }
//   }
// }
