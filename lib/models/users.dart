import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:onlineconsultation/models/roles.dart';
import 'package:json_annotation/json_annotation.dart';
part 'users.g.dart';

@JsonSerializable()
class Users {
  String userId;
  final String id;
  final String email;
  final String fullName;
  final String phone;
  final String roles;
  Users(
      {required this.id,
      required this.email,
      required this.fullName,
      required this.phone,
      required this.roles,
      required this.userId});



  factory Users.fromDocument(DocumentSnapshot snapshot) {

    String userId = "";
    String fullName = "";
    String phoneNumber = "";
    String aboutMe = "";

    try {
      fullName = snapshot.get("fullName");
      userId = snapshot.get("userId");
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return Users(id:" 0900", email: "email", fullName: fullName, phone: "", roles: "patient", userId: userId);
  }

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);
}
