import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:onlineconsultation/models/users.dart';

//fetching converting the http.Response to a user
Future<Users> fetchUsers() async {
  final response =
      await http.get(Uri.parse('http://localhost:8000/api/users/'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Users.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Users');
  }
}
