import 'package:flutter/material.dart';
import 'package:medic/constants.dart';

class MedicRedButton extends StatelessWidget {
  final String title;
  final Function onPress;

  MedicRedButton({this.title,this.onPress});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.all(10.0),
      onPressed: onPress,
      color: Medic.mainColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Text(title,
      style: TextStyle(
        color: Colors.white,
      ),),
    );
  }
}
