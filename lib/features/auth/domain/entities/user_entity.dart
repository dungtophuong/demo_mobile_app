import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int? id;
  final String? name;
  final String? avatar;
  final DateTime? createdAt;

  const UserEntity(
      {required this.id,
      required this.name,
      required this.avatar,
      required this.createdAt});

  @override
  List<Object?> get props {
    return [id, name, avatar, createdAt];
  }
}
