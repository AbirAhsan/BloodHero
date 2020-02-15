import 'package:bloodhero/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          print("Hey I am Dialog Box");
          return;
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text("Settings"),
            backgroundColor: Colors.deepOrange,
          ),
          drawer: DrawerApp(),
          body: ListView(children: <Widget>[
            Card(
              child: Text("Welcome to settings"),
            )
          ]),
        ));
  }
}
