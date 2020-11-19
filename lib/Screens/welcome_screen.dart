import 'package:flutter/material.dart';
import 'package:medic/Screens/auth_screen.dart';
import 'package:medic/Screens/diet_screen.dart';
import 'package:medic/constants.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startAnimation();
  }

  void _startAnimation()async{
    Future.delayed(Duration(seconds: 2),(){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return AuthScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Medic.mainColor,
      body: SafeArea(
          child: Container(
            color: Medic.mainColor,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.white,
                ),
                Container(
                  height: 100.0,
                  width: 300.0,
                  color: Colors.white,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.white,
                ),
              ],
            ),
          )
      ),
    );
  }
}
