import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExitPopUp extends StatefulWidget {
  @override
  _ExitPopUpState createState() => _ExitPopUpState();
}

class _ExitPopUpState extends State<ExitPopUp> {
  showExitPopUp(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text("Confirm"),
              content: Text("Do you want to Exit ?"),
              actions: <Widget>[
                RaisedButton(child: Text("No"), onPressed: () {
                  Navigator.of(context).pop();
                }),
                RaisedButton(child: Text("Yes"), onPressed: () {
                  SystemNavigator.pop();
                })
              ]);
        });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
     child: showExitPopUp(context),
    );
  }
}