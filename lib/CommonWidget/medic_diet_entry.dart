import 'package:flutter/material.dart';

import '../constants.dart';

class MedicDietEntry extends StatelessWidget {
  final String title;
  
  MedicDietEntry({this.title});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [BoxShadow(
          blurRadius: 3.0,
          offset: Offset(3,3),
          color: Colors.black.withOpacity(0.2)
        )]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
          style: TextStyle(
            color: Medic.mainColor,
            fontWeight: FontWeight.w900
          ),),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter Data'
            ),
          )
        ],
      ),
    );
  }
}
