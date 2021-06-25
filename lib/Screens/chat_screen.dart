import 'package:flutter/material.dart';
import 'package:medic/CommonWidget/MessageBox/left_message_box.dart';
import 'package:medic/CommonWidget/MessageBox/right_message_box.dart';
import 'package:medic/CommonWidget/medic_prescription.dart';
import 'package:medic/Dummy/all_prescriptions.dart';
import 'package:medic/constants.dart';
import 'package:medic/model/prescription.dart';

class ChatScreen extends StatefulWidget {
  final String recieverName;

  ChatScreen({this.recieverName = ""});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Widget> messageList = [
    LeftMessage(
      content: 'Please explain !',
    ),
    RightMessage(
      content: 'I am suffering from mild headache',
    ),
    LeftMessage(
      content: 'Hi',
    ),
    RightMessage(
      content: 'hello',
    ),
  ];

  TextEditingController controller;
  String typedMsg = '';

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  void openPrescriptionSheet(context) async {
    for (var pres in prescriptions) {
      if (pres.doctorName == widget.recieverName) {
        await showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                height: 300.0,
                child: PrescriptionBox(pres: pres),
              );
            });
        return;
      }
    }
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Sorry'),
              content: Text('No prescriptions are available from this doctor'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Medic.mainColor,
        title: Text(
          widget.recieverName,
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (s) {
              switch (s) {
                case 'Prescription':
                  openPrescriptionSheet(context);
              }
            },
            itemBuilder: (BuildContext context) {
              return {'Share Diet', 'Prescription'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: ListView.builder(
                  reverse: true,
                  itemCount: messageList.length,
                  itemBuilder: (context, index) {
                    return messageList[index];
                  },
                ),
              ),
            ),
            Container(
              height: 50.0,
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    blurRadius: 2.0,
                    offset: Offset(2, 2),
                    color: Colors.black.withOpacity(0.2))
              ]),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: TextField(
                        controller: controller,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter message here'),
                        onChanged: (val) {
                          typedMsg = val;
                        },
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (typedMsg != '') {
                        setState(() {
                          messageList.insert(
                              0,
                              RightMessage(
                                content: typedMsg,
                              ));
                        });
                        typedMsg = '';
                        controller.clear();
                      }
                    },
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        color: Medic.mainColor,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
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

