import 'package:bloodhero/widgets/drawer.dart';
import 'package:flutter/material.dart';

class BloodDonor extends StatefulWidget {
  @override
  _BloodDonerState createState() => _BloodDonerState();
}

class _BloodDonerState extends State<BloodDonor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Honorable Doner"),
          backgroundColor: Colors.deepOrange,
        ),
        drawer: DrawerApp(),
        body: ListView(
          children: <Widget>[
            Card(
              child: Text("Welcome to Honorable Doner Page"),
            ),
          ],
        ));
  }
}
