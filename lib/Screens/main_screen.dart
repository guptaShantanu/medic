import 'package:flutter/material.dart';
import 'package:medic/CommonWidget/medic_diet_entry.dart';
import 'package:medic/CommonWidget/medic_doctor_tile.dart';
import 'package:medic/Screens/diet_screen.dart';
import 'package:medic/constants.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  Map<int,String> dayName = {
    1:'Monday',
    2:'Tuesday',
    3:'Wednesday',
    4:'Thursday',
    5:'Friday',
    6:'Saturday',
    7:'Sunday'
  };

  
  _openDietBottomSheet(BuildContext context){

     DateTime currentDate = DateTime.now();

    showModalBottomSheet(context: context,
        builder: (context){
          return SingleChildScrollView(
            child: Container(
            height: 700.0,
              color: Medic.mainColor,
              child: Container(
//                height: 700.0,
                margin: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    //DateBox
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(3,3),
                            blurRadius: 3.0
                          )
                        ]
                      ),
                      child: Text(
                        '${dayName[currentDate.weekday]} - ${currentDate.day}, ${currentDate.month}, ${currentDate.year} ',
                        style: TextStyle(
                          color: Medic.mainColor,
                          fontSize: 25.0
                        ),
                      ),
                    ),
                    MedicDietEntry(title: 'Breakfast',),
                    MedicDietEntry(title: 'Lunch',),
                    MedicDietEntry(title: 'Dinner',),
                  ],
                ),
              ),
            ),
          );
        });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medic'),
        backgroundColor: Medic.mainColor,
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(10.0),
          color: Medic.mainColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200.0,
                color: Colors.white,
              ),
              SizedBox(height: 20.0,),
              Text('Add doctor',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0
              ),),
              SizedBox(height: 20.0,),
              Text('Prescription',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0
                ),),
              SizedBox(height: 20.0,),
              Text('Appointments',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0
                ),),
              SizedBox(height: 20.0,),
              GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DietScreen();
                })),
                child: Text('Diet History',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0
                  ),),
              ),
              SizedBox(height: 20.0,),
              Text('Logout',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0
                ),),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Medic.mainColor,
        child: Icon(Icons.food_bank_rounded),
        onPressed: ()=>_openDietBottomSheet(context),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              MedicDoctorTile(
                title: 'Dr. Vijaynath',
                subtitle: 'Neurologist',
              ),
              MedicDoctorTile(
                title: 'Dr. Sriverem',
                subtitle: 'Dermatologist',
              ),
              MedicDoctorTile(
                title: 'Dr. Handa',
                subtitle: 'Pediatricians',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
