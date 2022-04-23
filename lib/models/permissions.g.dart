// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permissions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Permissions _$PermissionsFromJson(Map<String, dynamic> json) => Permissions(
      id: json['id'] as int?,
      permName: json['permName'] as String?,
      permDescription: json['permDescription'] as String?,
    );

Map<String, dynamic> _$PermissionsToJson(Permissions instance) =>
    <String, dynamic>{
      'id': instance.id,
      'permName': instance.permName,
      'permDescription': instance.permDescription,
    };
