import 'package:flutter_application_1/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel(
      {required super.id,
      required super.name,
      required super.avatar,
      required super.createdAt});

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
        id: map['id'] ?? "",
        name: map['name'] ?? "",
        avatar: map['avatar'] ?? "",
        createdAt: map['createdAt'] ?? "");
  }

  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
        id: entity.id,
        name: entity.name,
        avatar: entity.avatar,
        createdAt: entity.createdAt);
  }

  // Map<String, dynamic> toMap() => {
  //       'id': id,
  //       'avatar': avatar,
  //       'createdAt': createdAt,
  //       'name': name,
  //     };
  // String toJson() => JsonEncoder(toMap());
}
