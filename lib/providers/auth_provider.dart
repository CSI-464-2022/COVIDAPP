import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Status {
  uninitialized,
  authenticated,
  authenticating,
  authenticateError,
  authenticateCanceled,
}

class AuthProvider extends ChangeNotifier {

  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;
  final SharedPreferences prefs;

  Status _status = Status.uninitialized;

  Status get status => _status;

  AuthProvider(
      {
        required this.firebaseAuth,
        required this.firebaseFirestore,
        required this.prefs});

  String? getFirebaseUserId() {
    return prefs.getString("id");
  }

  Future<bool> isLoggedIn() async {
    bool isLoggedIn = firebaseAuth.currentUser?.uid == null;
    if (isLoggedIn &&
        prefs.getString("id")?.isNotEmpty == true) {
      return true;
    } else {
      return false;
    }
  }

}