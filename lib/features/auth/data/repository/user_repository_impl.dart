import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/resources/data_state.dart';
import 'package:flutter_application_1/features/auth/data/data_souces/remote/user_api_service.dart';
import 'package:flutter_application_1/features/auth/data/models/user_model.dart';
import 'package:flutter_application_1/features/auth/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApiService _userApiService;

  UserRepositoryImpl(this._userApiService);

  @override
  Future<DataState<List<UserModel>>> getUsers() async {
    try {
      final httpResponse = await _userApiService.getUsers();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
