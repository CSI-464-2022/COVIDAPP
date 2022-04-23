// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Roles _$RolesFromJson(Map<String, dynamic> json) => Roles(
      id: json['id'] as int?,
      roleName: json['roleName'] as String?,
      roleDescription: json['roleDescription'] as String?,
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => Permissions.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RolesToJson(Roles instance) => <String, dynamic>{
      'id': instance.id,
      'roleName': instance.roleName,
      'roleDescription': instance.roleDescription,
      'permissions': instance.permissions,
    };
