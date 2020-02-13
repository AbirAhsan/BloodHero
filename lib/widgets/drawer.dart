import 'package:bloodhero/pages/aboutus.dart';
import 'package:bloodhero/pages/people.dart';
import 'package:bloodhero/pages/registration.dart';
import 'package:bloodhero/pages/settings.dart';
import 'package:bloodhero/pages/home.dart';
import 'package:flutter/material.dart';

class DrawerApp extends StatefulWidget {
  @override
  _DrawerAppState createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 220.0,
        child: Container(
            color: Colors.black38,
            child: ListView(children: <Widget>[
              DrawerHeader(
                  child: UserAccountsDrawerHeader(
                      arrowColor: Colors.white,
                      accountName: Text("Abir Ahsan"),
                      accountEmail: Text("abirahsan122@gmail.com"))),
              Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text("Home", style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.people,
                      color: Colors.white,
                    ),
                    title: Text("Blood Doner",
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BloodDoner()));
                    },
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.school,
                      color: Colors.white,
                    ),
                    title: Text("Registration",
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Registration()));
                    },
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.build,
                      color: Colors.white,
                    ),
                    title:
                        Text("Settings", style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Settings()));
                    },
                  ),
                  SizedBox(height: 5.0),
                  ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    title:
                        Text("About Us", style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AboutUs()));
                    },
                  )
                ],
              )
            ])));
  }
}
