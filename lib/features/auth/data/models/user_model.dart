import 'package:flutter_application_1/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel(
      {required super.id,
      required super.fullname,
      required super.avatar,
      required super.email,
      required super.password});

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
        id: map['id'] ?? "",
        fullname: map['fullname'] ?? "",
        avatar: map['avatar'] ?? "",
        email: map['email'] ?? "",
        password: map['password'] ?? "");
  }

  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
        id: entity.id,
        fullname: entity.fullname,
        avatar: entity.avatar,
        password: entity.password,
        email: entity.email);
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'avatar': avatar,
        'email': email,
        'password': password,
        'fullname': fullname,
      };

  Map<String, dynamic> toJson() => toMap();
}
