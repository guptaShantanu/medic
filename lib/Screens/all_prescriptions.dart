import 'package:flutter/material.dart';
import 'package:medic/CommonWidget/medic_prescription.dart';
import 'package:medic/Dummy/all_prescriptions.dart';
import 'package:medic/Screens/chat_screen.dart';
import 'package:medic/constants.dart';

class AllPrescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your prescriptions'),
        backgroundColor: Medic.mainColor,
      ),
      body: Container(
        child: ListView(
          children: prescriptions.map((e) => PrescriptionBox(pres: e)).toList(),
        ),
      ),
    );
  }
}
