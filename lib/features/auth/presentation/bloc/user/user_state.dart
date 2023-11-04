import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/features/auth/domain/entities/user_entity.dart';

abstract class UserState extends Equatable {
  final List<UserEntity>? users;
  final DioError? error;

  const UserState({this.users, this.error});

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
  const GetUsersError(DioError error) : super(error: error);
}
