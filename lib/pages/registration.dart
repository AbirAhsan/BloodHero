import 'package:bloodhero/widgets/drawer.dart';
import 'package:bloodhero/widgets/exitpopup.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          print("Hey I am Dialog Box");
          ExitPopUp();
        },
        child: Scaffold(
            appBar: AppBar(
              title: Text("Registration"),
              backgroundColor: Colors.deepOrange,
            ),
            drawer: DrawerApp(),
            body: ListView(
              children: <Widget>[
                Card(child: Text("Name:")),
                Card(child: Text("Email Addrees:")),
                Card(child: Text("Phone Number:")),
                Card(child: Text("Blood Group:")),
              ],
            )));
  }
}
