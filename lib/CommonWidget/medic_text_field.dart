import 'package:flutter/material.dart';


class MedicTextField extends StatelessWidget {
  final String hintText;
  final Function onChange;

  const MedicTextField({
    this.hintText,
    this.onChange
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.only(left: 10.0,right: 10.0,top: 5.0,bottom: 5.0),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
          hintText: hintText
        ),
        onChanged: onChange,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(3,3),
              blurRadius: 3.0
          ),
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(1,1),
                blurRadius: 1.0
            )]
      ),
    );
  }
}
