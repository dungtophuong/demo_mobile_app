import 'package:equatable/equatable.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class GetUsers extends UserEvent {
  const GetUsers();
}

class CreateUser extends UserEvent {
  const CreateUser();
}
