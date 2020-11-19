import 'package:flutter/material.dart';
import 'package:medic/CommonWidget/medic_date_box.dart';
import 'package:medic/CommonWidget/medic_diet_entry.dart';
import 'package:medic/constants.dart';

class DietScreen extends StatefulWidget {
  @override
  _DietScreenState createState() => _DietScreenState();
}

class _DietScreenState extends State<DietScreen> {
  List<int> dayList;
  int currentDay;

  @override
  void initState() {
    dayList = new List();
    for (int i = 1; i <= 30; i++) {
      dayList.add(i);
    }
    currentDay = DateTime.now().day;
    super.initState();
  }

  _openDietBottomSheet(BuildContext context){


    showModalBottomSheet(context: context,
        builder: (context){
          return Container(
            height: 700.0,
            color: Medic.mainColor,
            child: Container(
//                height: 700.0,
              margin: EdgeInsets.only(top: 20.0),
              child: Column(
                children: [
                  //DateBox
//                    Container(
//                      margin: EdgeInsets.symmetric(horizontal: 10.0),
//                      padding: EdgeInsets.all(10.0),
//                      decoration: BoxDecoration(
//                          color: Colors.white,
//                          borderRadius: BorderRadius.circular(10.0),
//                          boxShadow: [
//                            BoxShadow(
//                                color: Colors.black.withOpacity(0.2),
//                                offset: Offset(3,3),
//                                blurRadius: 3.0
//                            )
//                          ]
//                      ),
//                      child: Text(
//                        '$',
//                        style: TextStyle(
//                            color: Medic.mainColor,
//                            fontSize: 25.0
//                        ),
//                      ),
//                    ),
                  MedicDietEntry(title: 'Breakfast',),
                  MedicDietEntry(title: 'Lunch',),
                  MedicDietEntry(title: 'Dinner',),
                ],
              ),
            ),
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diet History'),
        backgroundColor: Medic.mainColor,
      ),
      body: Column(
        children: [
          Container(
            height: 60.0,
            padding: EdgeInsets.all(5.0),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.keyboard_arrow_left,
                color: Colors.black,),
                Text('Current month',
                style: TextStyle(
                  color: Medic.mainColor,
                  fontWeight: FontWeight.w900
                ),),
                Icon(Icons.keyboard_arrow_right,
                color: Colors.grey,),
              ],
            ),
          ),
          Container(
            child: Wrap(
              children: dayList
                  .map(
                      (e) => e < currentDay
                          ? GestureDetector(
                        onTap: ()=>_openDietBottomSheet(context),
                          child: MedicDateBox(e, 1))
                          : MedicDateBox(e, 0))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
