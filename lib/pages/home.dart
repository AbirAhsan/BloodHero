import 'package:bloodhero/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  showExitPopUp(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
            backgroundColor: Colors.black26,
              title: Text("Confirm", style: TextStyle(color:Colors.white)),
              content: Text("Do you want to Exit ?", style: TextStyle(color:Colors.white)),
              actions: <Widget>[
                RaisedButton(
                  color: Colors.white24,
                  child: Text("No", style: TextStyle(color:Colors.yellow[100]),), onPressed: () {
                  Navigator.of(context).pop();
                }),
                RaisedButton(
                  color: Colors.white24,
                  child: Text("Yes", style: TextStyle(color:Colors.yellow[100])), onPressed: () {
                  SystemNavigator.pop();
                })
              ],
              
              );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print("Hey I am Dialog Box");
        showExitPopUp(context);
      },
        child: Scaffold(
          appBar: AppBar(
            title: Text("Home"),
            backgroundColor: Colors.deepOrange,
          ),
          drawer: DrawerApp(),
          body: ListView(
            padding: EdgeInsets.all(50.0),
            children: <Widget>[
              Container(
                  height: 200.0,
                  child: Text(
                    "Hey, Welcome to Blood Hero",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
        );
  }
}
