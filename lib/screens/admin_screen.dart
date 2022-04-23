import 'package:flutter/material.dart';

class AdminPageState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            decoration: const BoxDecoration(),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  height: 64,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      CircleAvatar(
                        radius: 32,
                        backgroundImage: AssetImage('assets/doctor.png'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  primary: false,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/doctor.png',
                            height: 128,
                          ),
                          const Text('Add User')
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/doctor.png',
                            height: 128,
                          ),
                          const Text('Delete User')
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/doctor.png',
                            height: 128,
                          ),
                          const Text('Block User')
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/doctor.png',
                            height: 128,
                          ),
                          const Text('view User')
                        ],
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  AdminPageState createState() => AdminPageState();
}
