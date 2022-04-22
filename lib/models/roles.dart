import 'package:json_annotation/json_annotation.dart';

import 'permissions.dart';
part 'roles.g.dart';

@JsonSerializable()
class Roles {
  final int? id;
  final String? roleName;
  final String? roleDescription;
  final List<Permissions>? permissions;

  Roles({this.id, this.roleName, this.roleDescription, this.permissions});
  factory Roles.fromJson(Map<String, dynamic> json) => _$RolesFromJson(json);
  Map<String, dynamic> toJson() => _$RolesToJson(this);
}
