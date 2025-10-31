import 'package:appointment_app/core/networking/api_service.dart';
import 'package:appointment_app/fetures/login/logic/login_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

import '../../fetures/login/data/repo/login_repo.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async{
  // Register your dependencies here
  // Example:
  // getit.registerLazySingleton<YourService>(() => YourServiceImpl());

  // Dio & ApiService
  Dio doi = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(doi));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}