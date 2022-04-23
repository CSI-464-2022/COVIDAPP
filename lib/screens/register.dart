import 'dart:async';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;
import 'package:onlineconsultation/models/models.dart';
import 'package:onlineconsultation/screens/auth_screen.dart';
import 'package:onlineconsultation/widgets/background.dart';

class RegistrationScreen extends StatefulWidget {
  final String uid;
  const RegistrationScreen( {Key? key, required this.uid}) : super(key: key);

  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<RegistrationScreen> {
  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _Id = TextEditingController();
  final _registerFormKey = GlobalKey<FormState>();

  void addData() async {
    FirebaseFirestore.instance.collection('users').doc(widget.uid).set(
      Users(id: _Id.text, email: _email.text, fullName: _fullName.text, phone: _phone.text, roles: "patient", userId: widget.uid).toJson()
    ).whenComplete(() => FirebaseAuth.instance.currentUser?.sendEmailVerification().then((value) => FirebaseAuth.instance.signOut()));

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Background(
        child: buildForm(),
      ),
    );
  }

  Widget buildForm() {
    Size size = MediaQuery.of(context).size;
    return Form(
        key: _registerFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: const Text(
                "REGISTER",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA),
                    fontSize: 36),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                controller: _fullName,
                decoration: const InputDecoration(labelText: "Name"),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                controller: _email,
                validator: (value) {
                  if (value == null) {
                    return 'Please enter your email';
                  } else {
                    return EmailValidator.validate(value)
                        ? null
                        : 'Please fill with the valid email';
                  }
                },
                onChanged: (value) {},
                autocorrect: true,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: "Email"),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: _Id,
                decoration: const InputDecoration(labelText: "idNumber"),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: _phone,
                decoration: const InputDecoration(labelText: "Mobile Number"),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: ElevatedButton(
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80.0),
                        gradient: const LinearGradient(colors: [
                          Color.fromARGB(255, 255, 136, 34),
                          Color.fromARGB(255, 255, 177, 41)
                        ])),
                    padding: const EdgeInsets.all(0),
                    child: const Text(
                      "Register",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () async {
                    if (_registerFormKey.currentState!.validate()) {
                      _registerFormKey.currentState!.save();
                      addData();
                    }
                  }),
            ),
          ],
        ),
      );
  }
}
