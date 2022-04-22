import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:onlineconsultation/models/users.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final CollectionReference users = FirebaseFirestore.instance.collection('users');
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: getCurrentUser(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Text(snapshot.data.toString());
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
  Future<Users> getProfileInfo() async{
    return await users.doc(_auth.currentUser!.uid)
        .withConverter<Users>(fromFirestore: (snapshots, _) => Users.fromJson(snapshots.data()!),
      toFirestore: (covidUser, _) => covidUser.toJson(),).get().then((value){
      return Users.fromJson(value.data()!.toJson());
    });
  }

  Future<String?> getCurrentUser() async{
    var currentUser = FirebaseAuth.instance.currentUser;
    return currentUser!.email;
  }
}


