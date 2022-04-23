import 'package:flutter/material.dart';

import '../models/models.dart';
import '../screens/screens.dart';

class GroupTile extends StatelessWidget {
  final Users person;
  final String groupId;
  final String groupName;
  final String pushToken;

  const GroupTile({Key? key, required this.person, required this.groupId,required this.groupName,required this.pushToken}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       // Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(groupId: groupId, user: person, pushToken: pushToken)));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            child: Text(groupName.substring(0, 1).toUpperCase(), textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
          ),
          title: Text(groupName, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text('Join the conversation as ${person.fullName}', style: TextStyle(fontSize: 13.0)),
        ),
      ),
    );
  }
}
