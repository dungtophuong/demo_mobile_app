import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/features/auth/data/models/user_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'user_api_service.g.dart';

@RestApi(baseUrl: userApiBaseURL)
abstract class UserApiService {
  factory UserApiService(Dio dio) = _UserApiService;

  @GET('/users')
  Future<HttpResponse<List<UserModel>>> getUsers();
}
