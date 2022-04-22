import 'package:onlineconsultation/models/roles.dart';
import 'package:json_annotation/json_annotation.dart';
part 'users.g.dart';

@JsonSerializable()
class Users {
  final int id;
  final String email;
  final String fullName;
  final String phone;
  final Roles roles;
  Users(
      {required this.id,
      required this.email,
      required this.fullName,
      required this.phone,
      required this.roles});

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);
}
