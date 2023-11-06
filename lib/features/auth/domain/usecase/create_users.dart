import 'package:flutter_application_1/core/resources/data_state.dart';
import 'package:flutter_application_1/core/usecases/usecase.dart';
import 'package:flutter_application_1/features/auth/domain/entities/user_entity.dart';
import 'package:flutter_application_1/features/auth/domain/repository/user_repository.dart';

class CreateUsersUseCase implements UseCase<DataState<UserEntity>, void> {
  final UserRepository _userRepository;

  CreateUsersUseCase(this._userRepository);

  @override
  Future<DataState<UserEntity>> call({void params}) {
    return _userRepository.createUser();
  }
}
