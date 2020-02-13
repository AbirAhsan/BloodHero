import 'package:bloodhero/widgets/drawer.dart';
import 'package:flutter/material.dart';

class BloodDoner extends StatefulWidget {
  @override
  _BloodDonerState createState() => _BloodDonerState();
}

class _BloodDonerState extends State<BloodDoner> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          print("Hey I am Dialog Box");
        },
        child: Scaffold(
            appBar: AppBar(
              title: Text("Honorable Doner"),
              backgroundColor: Colors.deepOrange,
            ),
            drawer: DrawerApp(),
            body: ListView(
              children: <Widget>[
                Card(
                  child: Text("Welcome to Honorable Doner Page"),
                )
              ],
            )));
  }
}
