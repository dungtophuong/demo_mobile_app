import 'package:flutter_application_1/core/resources/data_state.dart';
import 'package:flutter_application_1/core/usecases/usecase.dart';
import 'package:flutter_application_1/features/auth/domain/entities/user_entity.dart';
import 'package:flutter_application_1/features/auth/domain/repository/user_repository.dart';

class GetUsersUseCase implements UseCase<DataState<List<UserEntity>>, void> {
  final UserRepository _userRepository;

  GetUsersUseCase(this._userRepository);

  @override
  Future<DataState<List<UserEntity>>> call({void params}) {
    return _userRepository.getUsers();
  }
}
