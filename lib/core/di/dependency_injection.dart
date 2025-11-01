import 'package:appointment_app/core/networking/api_service.dart';
import 'package:appointment_app/fetures/login/logic/login_cubit.dart';
import 'package:appointment_app/fetures/sign_up/data/repo/sign_up_repo.dart';
import 'package:appointment_app/fetures/sign_up/logic/sign_up_cubit.dart';
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
  // registerFactory is used to create a new instance every time it's requested
  // because Cubits often hold state and should not be shared
  // when navigating between different parts of the app.
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  // registerFactory is used to create a new instance every time it's requested
  // because Cubits often hold state and should not be shared
  // when navigating between different parts of the app.
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}