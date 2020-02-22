import 'dart:async';
import 'package:bloodhero/pages/loginpage.dart';
import 'package:bloodhero/widgets/exitpop.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => ExitPopUp(LoginPage()))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.green),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Container(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 50.0,
                          child: Icon(
                            Icons.local_hospital,
                            color: Colors.red,
                            size: 80.0,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Text(
                          "Blood Hero",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                          top: 5,
                        )),
                        Text(
                          "       Developed by \n       \t         Abir Ahsan",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "AlexBrush",
                              fontSize: 20.0),
                        )
                      ],
                    ))),
                Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircularProgressIndicator(
                          backgroundColor: Colors.white,
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Text("Please, wait a moment",
                            style: TextStyle(color: Colors.white))
                      ],
                    ))
              ],
            )
          ],
        ));
  }
}
