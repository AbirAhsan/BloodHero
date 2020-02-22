import 'package:bloodhero/pages/home.dart';
import 'package:bloodhero/widgets/exitpop.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage("assets/donor_poster.png"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          ListView(children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 80.0)),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 50.0,
                  child: Icon(
                    Icons.local_hospital,
                    color: Colors.red,
                    size: 80.0,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: Form(
                    child: Theme(
                      data: ThemeData(
                          brightness: Brightness.dark,
                          primarySwatch: Colors.teal,
                          inputDecorationTheme: InputDecorationTheme(
                            labelStyle: TextStyle(
                                color: Colors.teal,
                                fontSize: 30.0,
                                fontFamily: "AlexBrush"),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, right: 20.0, left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            TextFormField(
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12.0),
                              decoration: InputDecoration(
                                labelText: "Enter Your Email",
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                            ),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                labelText: "Enter Your password",
                              ),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                            ),
                            MaterialButton(
                              height: 40.0,
                              minWidth: 150.0,
                              color: Colors.teal,
                              textColor: Colors.white,
                              child: Text(
                                "Login",
                                style: TextStyle(fontSize: 20.0),
                              ),
                              shape: StadiumBorder(),
                              splashColor: Colors.orange,
                              onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ExitPopUp(
                                      HomePage(),
                                    ),
                                  ),
                                ),
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ])
        ],
      ),
    );
  }
}
