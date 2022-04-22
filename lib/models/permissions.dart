import 'package:json_annotation/json_annotation.dart';
part 'permissions.g.dart';

@JsonSerializable()
class Permissions {
  final int? id;
  final String? permName;
  final String? permDescription;

  Permissions({this.id, this.permName, this.permDescription});
  factory Permissions.fromJson(Map<String, dynamic> json) => _$PermissionsFromJson(json);
  Map<String, dynamic> toJson() => _$PermissionsToJson(this);
}
