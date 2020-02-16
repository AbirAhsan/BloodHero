import 'package:bloodhero/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:bloodhero/widgets/form.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Registration"),
          backgroundColor: Colors.deepOrange,
        ),
        drawer: DrawerApp(),
        body: ListView(
          children: <Widget>[
            FormPage(),
          ],
        ));
  }
}
