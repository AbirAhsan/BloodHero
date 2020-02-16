import 'package:bloodhero/widgets/drawer.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
        backgroundColor: Colors.deepOrange,
      ),
      drawer: DrawerApp(),
      body: ListView(children: <Widget>[
        Card(
          child: Text(
              "Hey, I am developer of this Application. We want to introduce ..........."),
        ),
        Card(
          child: Text(
              "Hey, I am developer of this Application. We want to introduce ..........."),
        ),
        Card(
          child: Text(
              "Hey, I am developer of this Application. We want to introduce ..........."),
        )
      ]),
    );
  }
}
