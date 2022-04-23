import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MessageTile extends StatelessWidget {

  final String message;
  final String sender;
  final String senderId;
  final bool sentByMe;
  final Timestamp timestamp;

  MessageTile({required this.message, required this.sender,required this.senderId, required this.sentByMe, required this.timestamp});


  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(
          top: 4,
          bottom: 4,
          left: sentByMe ? 0 : 24,
          right: sentByMe ? 24 : 0),
      alignment: sentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: sentByMe ? const EdgeInsets.only(left: 30) : const EdgeInsets.only(right: 30),
        padding: const EdgeInsets.only(top: 17, bottom: 17, left: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: sentByMe ? const BorderRadius.only(
              topLeft: Radius.circular(23),
              topRight: Radius.circular(23),
              bottomLeft: Radius.circular(23)
          )
              :
          const BorderRadius.only(
              topLeft: Radius.circular(23),
              topRight: Radius.circular(23),
              bottomRight: Radius.circular(23)
          ),
          color: sentByMe ? Colors.blue : Colors.grey[700],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(sentByMe?"Me":sender, textAlign: TextAlign.start, style: const TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold, color: Colors.blue, letterSpacing: -0.5)),
            const SizedBox(height: 7.0),
            Text(message),
            // Text(message, textAlign: TextAlign.start, style: TextStyle(fontSize: 15.0, color: Colors.white)),
            Text("${DateFormat.yMMMd().format(timestamp.toDate())}@${DateFormat.Hm().format(timestamp.toDate())}", textAlign: TextAlign.end, style: const TextStyle(fontSize: 10.0, color: Colors.white))
          ],
        ),
      ),
    );
  }
}
