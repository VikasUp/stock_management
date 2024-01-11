import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';


final serviceLocator = GetIt.instance;

Future<void> init() async {
  
  //! DashBoard

  // serviceLocator.registerFactory(() => BreakersBloc(
  //     datasource: serviceLocator(),
  //     divisionList: serviceLocator(),
  //     teamslistContent: serviceLocator()));
  // serviceLocator.registerFactory(() => Teams(serviceLocator()));
  // serviceLocator.registerFactory(() => Division(serviceLocator()));
  // serviceLocator.registerFactory<BreakersRepository>(
  //     () => BreakersRepositoryImpl(serviceLocator()));
  // serviceLocator
  //     .registerFactory<BreakersDatasource>(() => BreakersDatasourceImpl());

  //! Core
  //! External

  final SharedPreferences preferences = await SharedPreferences.getInstance();
  serviceLocator.registerLazySingleton(() => preferences);

  // Register Firebase
  serviceLocator.registerLazySingleton(
      () => FirebaseAnalyticsObserver(analytics: serviceLocator()));
  serviceLocator.registerLazySingleton(() => FirebaseAnalytics.instance);
}
