import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Exitpop extends StatelessWidget {
  void showExitPopUp(BuildContext context) {
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
    return Container(
      
    );
  }
}