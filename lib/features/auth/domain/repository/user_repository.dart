import 'package:flutter_application_1/core/resources/data_state.dart';
import 'package:flutter_application_1/features/auth/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<DataState<List<UserEntity>>> getUsers();
}
