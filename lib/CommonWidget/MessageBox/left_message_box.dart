import 'package:flutter/material.dart';

import '../../constants.dart';

class LeftMessage extends StatelessWidget {
  final String content;

  LeftMessage({this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(right: 60.0),
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Medic.mainColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(content,
        style: TextStyle(
          color: Colors.white
        ),),
      ),
    );
  }
}
