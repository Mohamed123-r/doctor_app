import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import 'package:doctor_app/core/networking/dio_factory.dart';
import 'package:doctor_app/features/logIn/data/repo/login_repo.dart';
import 'package:doctor_app/features/logIn/presentation/cubits/login_cubit.dart';
import 'package:doctor_app/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:doctor_app/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(loginRepo: getIt()));

  //sign up
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(signUpRepo: getIt()));


}
