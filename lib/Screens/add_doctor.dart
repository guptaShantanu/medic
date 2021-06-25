import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic/Dummy/added_doctor.dart';
import 'package:medic/Dummy/all_doctors.dart';
import 'package:medic/model/doctor.dart';

import '../constants.dart';

class AddDoctorScreen extends StatefulWidget {
  @override
  _AddDoctorScreenState createState() => _AddDoctorScreenState();
}

class _AddDoctorScreenState extends State<AddDoctorScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add doctor'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: doctors
                .map((e) => ExpansionTile(
                      leading: Icon(Icons.add),
                      title: Text(e.name),
                      childrenPadding: EdgeInsets.all(10.0),
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Category  :  ',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(e.category)
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Higher Quaification  :  ',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(e.higherQualification)
                                ],
                              ),
                              !e.added?RaisedButton(
                                onPressed: () {
                                  addedDoctors.add(e);
                                  setState(() {
                                    e.added = true;
                                  });
                                },
                                child: Text('Add',style: TextStyle(color: Colors.white),),
                                color: Medic.mainColor,
                              ):Text('Added')
                            ],
                          ),
                        ),
                      ],
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
