import 'package:flutter/material.dart';
import 'package:medic/CommonWidget/MessageBox/left_message_box.dart';
import 'package:medic/CommonWidget/MessageBox/right_message_box.dart';
import 'package:medic/constants.dart';

class ChatScreen extends StatefulWidget {
  final String recieverName;

  ChatScreen({this.recieverName=""});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Medic.mainColor,
        title: Text(widget.recieverName,
        style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: ListView(
                  reverse: true,
                  children: [
                    LeftMessage(content: 'Please explain !',),
                    RightMessage(content: 'I am suffering from mild headache',),
                    LeftMessage(content: 'Hi',),
                    RightMessage(content: 'hello',),
                  ],
                ),
              ),
            ),
            Container(
              height: 50.0,
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2.0,
                    offset: Offset(2,2),
                    color: Colors.black.withOpacity(0.2)
                  )
                ]
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter message here'
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: Medic.mainColor,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Icon(Icons.send,color: Colors.white,),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
