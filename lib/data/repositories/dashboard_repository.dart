// import 'package:dartz/dartz.dart';
// import 'package:stock_management/core/error/exception.dart';
// import 'package:stock_management/data/datasource/dashboard_datasource.dart';
// import 'package:stock_management/data/model/dashboard_response.dart';

// abstract class DashBoardRepository {
//   Future<Either<Failure, List<DashBoardResponse>>> dashBoardResponse();
// }

// class DashBoardRepositoryImpl implements DashBoardRepository {
//   final DashBoardDatasource datasource;

//   DashBoardRepositoryImpl(this.datasource);

//   @override
//   Future<Either<Failure, List<DashBoardResponse>>> dashBoardResponse() async {
//     try {
//       final success = await datasource.dashBoardResponse();

//       return Right(success);
//     } on Failure catch (e) {
//       return Left(e);
//     } catch (e) {
//       return Left(UnknownException(e.toString()));
//     }
//   }

  
// }
