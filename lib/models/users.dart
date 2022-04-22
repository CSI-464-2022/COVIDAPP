import 'dart:html';
import 'package:onlineconsultation/models/roles.dart';

class Users {
  final int? id;
  final String? email;
  final String? password;
  final String? fullname;

  final String? phone;
  final Roles? roles;
  Users(
      {this.id,
      this.email,
      this.password,
      this.fullname,
      this.phone,
      this.roles});

  // ignore: empty_constructor_bodies
  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
        id: json['id'] as int,
        email: json['email'] as String,
        password: json['password'] as String,
        fullname: json['fullname'] as String,
        phone: json['phone'] as String,
        roles: Roles.fromJson(json['Role']));
  }
  @override
  String toString() {
    return 'Users {fullnaname:$fullname, email: $email}';
  }
}
