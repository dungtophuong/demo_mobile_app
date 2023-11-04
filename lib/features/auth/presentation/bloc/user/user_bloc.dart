import 'package:flutter_application_1/core/resources/data_state.dart';
import 'package:flutter_application_1/features/auth/domain/usecase/get_users.dart';
import 'package:flutter_application_1/features/auth/presentation/bloc/user/user_event.dart';
import 'package:flutter_application_1/features/auth/presentation/bloc/user/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUsersUseCase _getUsersUseCase;

  UserBloc(this._getUsersUseCase) : super(const GetUsersLoading()) {
    on<GetUsers>(onGetUsers);
  }

  Future<void> onGetUsers(GetUsers event, Emitter<UserState> emit) async {
    final dataState = await _getUsersUseCase.call();
    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(GetUsersDone(dataState.data!));
    }
    if (dataState is DataFailed) {
      emit(GetUsersError(dataState.error!));
    }
  }
}
