import 'package:bloodhero/pages/aboutus.dart';
import 'package:bloodhero/pages/loginpage.dart';
import 'package:bloodhero/pages/people.dart';
import 'package:bloodhero/pages/settings.dart';
import 'package:bloodhero/pages/home.dart';
import 'package:bloodhero/widgets/exitpop.dart';
import 'package:flutter/material.dart';

class DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 220.0,
        child: Container(
            color: Colors.black38,
            child: ListView(children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "./assets/hand.jpg",
                      ),
                    ),
                  ),
                  child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(color: Colors.transparent),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExitPopUp(HomePage())));
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
                    title: Text("Blood Donor",
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExitPopUp(BloodDonor())));
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExitPopUp(Settings())));
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExitPopUp(AboutUs())));
                    },
                  ),
                  SizedBox(height: 5.0),
                  ListTile(
                    leading: Icon(
                      Icons.exit_to_app,
                      color: Colors.white,
                    ),
                    title:
                        Text("Log Out", style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExitPopUp(LoginPage())));
                    },
                  )
                ],
              )
            ])));
  }
}
