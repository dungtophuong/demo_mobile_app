import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/features/auth/domain/entities/user_entity.dart';

abstract class UserState extends Equatable {
  final List<UserEntity>? users;
  final DioException? error;
  final UserEntity? user;
  const UserState({this.users, this.user, this.error});

  @override
  List<Object> get props => [users!, error!];
}

class UserInitial extends UserState {
  const UserInitial();
}

class GetUsersLoading extends UserState {
  const GetUsersLoading();
}

class GetUsersDone extends UserState {
  const GetUsersDone(List<UserEntity> users) : super(users: users);
}

class GetUsersError extends UserState {
  const GetUsersError(DioException error) : super(error: error);
}

class CreateUserDone extends UserState {
  const CreateUserDone(UserEntity user) : super(user: user);
}

class CreateUsersError extends UserState {
  const CreateUsersError(DioException error) : super(error: error);
}
