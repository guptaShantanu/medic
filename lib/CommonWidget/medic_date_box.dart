import 'package:flutter/material.dart';

import '../constants.dart';

class MedicDateBox extends StatelessWidget {
  final int num;
  final int past;
  MedicDateBox(this.num,this.past);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 40.0,
      alignment: Alignment.center,
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: past==1?Medic.mainColor:Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [BoxShadow(
          offset: Offset(2,2),
          blurRadius: 2.0,
          color: Colors.black.withOpacity(0.2)
        )]
      ),
      child: Text('$num',
      style: TextStyle(
        color: past==1?Colors.white:Medic.mainColor,
        fontWeight: FontWeight.w900
      ),),
    );
  }
}
