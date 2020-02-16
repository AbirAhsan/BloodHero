import 'package:bloodhero/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
