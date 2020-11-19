import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic/CommonWidget/medic_red_button.dart';
import 'package:medic/CommonWidget/medic_text_field.dart';
import 'package:medic/Screens/main_screen.dart';
import 'package:medic/constants.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  bool login = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Medic.mainColor,
      body: SafeArea(
        child: IndexedStack(
          index: login?1:0,
          children: [
            SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: 20.0, bottom: 20.0, left: 30.0, right: 60.0),
                          height: MediaQuery.of(context).size.height * .75,
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
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 20.0, bottom: 20.0, left: 30.0, right: 20.0),
                          height: MediaQuery.of(context).size.height * .75,
                          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Column(
                            children: [
                              MedicTextField(
                                hintText: 'Full name',
                              ),
                              MedicTextField(
                                hintText: 'Mobile no',
                              ),
                              MedicTextField(
                                hintText: 'Email id',
                              ),
                              MedicTextField(
                                hintText: 'Age',
                              ),
                              MedicTextField(
                                hintText: 'Password',
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 30.0),
                                child: MedicRedButton(
                                  title: 'Register',
                                  onPress: () {},
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 30.0, right: 60.0),
                      height: MediaQuery.of(context).size.height * .10,
                      width: MediaQuery.of(context).size.width,
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
                            )]),
                      child: Center(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              login = !login;
                            });
                          },
                          child: Text(
                            "Already have an account ?",
                            style: TextStyle(
                                color: Medic.mainColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height * .75,
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 20.0, bottom: 20.0, left: 30.0, right: 60.0),
                            height: MediaQuery.of(context).size.height * .45,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      offset: Offset(3, 3),
                                      blurRadius: 3.0),
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      offset: Offset(1, 1),
                                      blurRadius: 1.0)
                                ]),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 20.0, bottom: 20.0, left: 30.0, right: 20.0),
                          height: MediaQuery.of(context).size.height * .75,
                          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MedicTextField(
                                hintText: 'Email',
                              ),
                              MedicTextField(
                                hintText: 'Password',
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 30.0),
                                child: MedicRedButton(
                                  title: 'Login',
                                  onPress: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context){
                                      return MainScreen();
                                    }));
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 30.0, right: 60.0),
                      height: MediaQuery.of(context).size.height * .10,
                      width: MediaQuery.of(context).size.width,
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
                            )]),
                      child: Center(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              login = !login;
                            });
                          },
                          child: Text(
                            "Don't have an account ?",
                            style: TextStyle(
                                color: Medic.mainColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
