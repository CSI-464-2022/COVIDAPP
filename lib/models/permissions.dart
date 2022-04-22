import 'dart:html';

class Permissions {
  final int? id;
  final String? permName;
  final String? permDescription;

  Permissions({this.id, this.permName, this.permDescription});

  factory Permissions.fromJson(Map<String, dynamic> json) {
    return Permissions(
      id: json['id'] as int,
      permName: json['perm_name'] as String,
      permDescription: json['perm_description'] as String,
    );
  }

  @override
  String toString() {
    return '$permDescription';
  }

  
}
