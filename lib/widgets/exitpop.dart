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
              title: Text("Confirm"),
              content: Text("Do you want to Exit ?"),
              actions: <Widget>[
                RaisedButton(
                    child: Text("No"),
                    onPressed: () {
                      Navigator.pop(context, false);
                    }),
                RaisedButton(
                    child: Text("Yes "),
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
