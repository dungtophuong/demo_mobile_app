import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int? id;
  final String? fullname;
  final String? avatar;
  final String? email;
  final String? password;

  const UserEntity(
      {required this.id,
      required this.fullname,
      required this.avatar,
      required this.email,
      required this.password});

  @override
  List<Object?> get props {
    return [id, fullname, avatar, email];
  }
}
