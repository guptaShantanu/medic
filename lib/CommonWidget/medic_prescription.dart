import 'package:flutter/material.dart';
import 'package:medic/constants.dart';
import 'package:medic/model/prescription.dart';

class PrescriptionBox extends StatelessWidget {
const PrescriptionBox({
Key key,
@required this.pres,
}) : super(key: key);

final Prescription pres;

@override
Widget build(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(15.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          pres.doctorName,
          style: TextStyle(fontSize: 20.0,color: Medic.mainColor),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5.0),
          width: double.infinity,
          height: 1.0,
          color: Medic.mainColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(pres.startTime.day.toString()+'-'+pres.startTime.month.toString()+'-'+pres.startTime.year.toString()),
            Text(pres.endTime.day.toString()+'-'+pres.endTime.month.toString()+'-'+pres.endTime.year.toString()),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5.0),
          width: double.infinity,
          height: 1.0,
          color: Medic.mainColor,
        ),
        ...pres.medicines
            .map((e) => Container(
          margin: EdgeInsets.all(5.0),
          child: Row(
            children: [
              Text(e.name),
              Expanded(
                child: Container(),
              ),
              ...e.time
                  .map((e) => Text(
                ' ' + e.toUpperCase() + ' ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Medic.mainColor),
              ))
                  .toList()
            ],
          ),
        ))
            .toList()
      ],
    ),
  );
}
}
