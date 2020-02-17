import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExitPopUp extends StatelessWidget {
  final page;
  ExitPopUp(this.page);
  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopUp() {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              backgroundColor: Colors.black26,
              title: Text("Confirm", style: TextStyle(color: Colors.white)),
              content: Text("Do you want to Exit ?",
                  style: TextStyle(color: Colors.white)),
              actions: <Widget>[
                RaisedButton(
                    color: Colors.white24,
                    child: Text(
                      "No",
                      style: TextStyle(color: Colors.yellow[100]),
                    ),
                    onPressed: () {
                      Navigator.pop(context, false);
                    }),
                RaisedButton(
                    color: Colors.white24,
                    child: Text("Yes",
                        style: TextStyle(color: Colors.yellow[100])),
                    onPressed: () {
                      SystemNavigator.pop();
                    })
              ],
            );
          });
    }

    return WillPopScope(child: page, onWillPop: showExitPopUp);
  }
}
