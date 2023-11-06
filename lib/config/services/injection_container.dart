import 'package:dio/dio.dart';
import 'package:flutter_application_1/features/auth/data/data_souces/remote/user_api_service.dart';
import 'package:flutter_application_1/features/auth/data/repository/user_repository_impl.dart';
import 'package:flutter_application_1/features/auth/domain/repository/user_repository.dart';
import 'package:flutter_application_1/features/auth/domain/usecase/get_users.dart';
import 'package:flutter_application_1/features/auth/presentation/bloc/user/user_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Dio
  sl.registerSingleton<Dio>(Dio());

  // Dependencies --------//

  //Api service
  sl.registerSingleton<UserApiService>(UserApiService(sl()));

  // Repositoty
  sl.registerSingleton<UserRepository>(UserRepositoryImpl(sl()));

  // UseCase
  sl.registerSingleton<GetUsersUseCase>(GetUsersUseCase(sl()));

  // Blocs
  sl.registerFactory<UserBloc>(() => UserBloc(sl(), sl()));
}
