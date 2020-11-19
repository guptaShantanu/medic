import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic/Screens/chat_screen.dart';

import '../constants.dart';

class MedicDoctorTile extends StatelessWidget {

  final String title;
  final String subtitle;

  MedicDoctorTile({this.title,this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.circular(10.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 3.0,
            offset: Offset(3,3),
            color: Colors.black.withOpacity(0.2)
          )
        ]
      ),
      child: ListTile(
        title: Text(title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Medic.mainColor
        ),),
        subtitle: Text(subtitle),
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context){
            return ChatScreen(recieverName: title,);
          }));
        },
      ),
    );
  }
}
