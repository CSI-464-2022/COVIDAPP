import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:onlineconsultation/screens/screens.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Go to Profile'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Go to Admin Screen'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AdminScreen()),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Go to Patient Screen'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PatientScreen()),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Go to Doctor Screen'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DoctorScreen()),
                );
              },
            ),
            TextButton(onPressed: logout, child: const Text("Logout"))
          ],
        ),
      ),
    );
  }

  void logout() {
    FirebaseAuth.instance
        .signOut()
        .then((value) => Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => const AuthScreen(),
            )));
  }
}
