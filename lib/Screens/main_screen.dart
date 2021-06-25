import 'package:flutter/material.dart';
import 'package:medic/CommonWidget/medic_diet_entry.dart';
import 'package:medic/CommonWidget/medic_doctor_tile.dart';
import 'package:medic/Dummy/added_doctor.dart';
import 'package:medic/Screens/add_doctor.dart';
import 'package:medic/Screens/all_prescriptions.dart';
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
                          fontSize: 20.0
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
          padding: EdgeInsets.all(20.0),
          color: Medic.mainColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundColor: Medic.mainColor,
                      child: Icon(Icons.person,color: Colors.white,size: 70.0,),
                    ),
                    Text('Username',style: TextStyle(color: Colors.white,fontSize: 20.0),)
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 2.0,
                color: Colors.white,
              ),
              SizedBox(height: 20.0,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddDoctorScreen()));
                },
                child: Text('Add doctor',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),),
              ),
              SizedBox(height: 20.0,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllPrescription()));
                },
                child: Text('Prescription',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                  ),),
              ),
              SizedBox(height: 20.0,),
              Text('Appointments',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                ),),
              SizedBox(height: 20.0,),
              GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DietScreen();
                })),
                child: Text('Diet History',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                  ),),
              ),
              SizedBox(height: 20.0,),
              Text('Logout',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
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
        child: RefreshIndicator(
          onRefresh: ()async{
            await Future<void>.delayed(Duration(seconds: 2));
            setState(() {

            });
          },
          child: Container(
            child: ListView.builder(
              itemCount: addedDoctors.length,
              itemBuilder: (context,index){
                return MedicDoctorTile(title: addedDoctors[index].name,subtitle: addedDoctors[index].category,);
              },
            ),
          ),
        ),
      ),
    );
  }
}
