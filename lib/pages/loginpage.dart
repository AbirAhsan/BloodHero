import 'package:bloodhero/pages/home.dart';
import 'package:bloodhero/pages/registration.dart';
import 'package:bloodhero/widgets/exitpop.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage("./assets/tree.jpg"),
            color: Colors.black87,
            colorBlendMode: BlendMode.softLight,
            fit: BoxFit.fill,
          ),
          Container(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                FocusScope.of(context).requestFocus(
                  FocusScopeNode(),
                );
              },
              child: ListView(
                children: <Widget>[
                  Stack(
                    fit: StackFit.loose,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: MediaQuery.of(context).size.height * (.5),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 50.0,
                            child: Icon(
                              Icons.local_hospital,
                              color: Colors.red,
                              size: 80.0,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * (.3)),
                          Theme(
                            data: ThemeData(
                                brightness: Brightness.dark,
                                primarySwatch: Colors.teal,
                                inputDecorationTheme: InputDecorationTheme(
                                    labelStyle:
                                        TextStyle(color: Colors.tealAccent))),
                            child: Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Form(
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: "Enter Your Email",
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          labelText: "Enter Your password"),
                                      obscureText: true,
                                    ),
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                    MaterialButton(
                                        height: 40.0,
                                        minWidth: 130.0,
                                        color: Colors.teal,
                                        textColor: Colors.white,
                                        child: Text(
                                          "Login",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontFamily: "Pacifico"),
                                        ),
                                        shape: StadiumBorder(),
                                        splashColor: Colors.orange,
                                        onPressed: () => {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ExitPopUp(
                                                              HomePage())))
                                            }),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    MaterialButton(
                                      height: 35.0,
                                      minWidth: 140.0,
                                      color: Colors.orangeAccent,
                                      textColor: Colors.white,
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.school,
                                          color: Colors.white,
                                        ),
                                        title: Text("Registration",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25,
                                                fontFamily: "Pacifico")),
                                      ),
                                      shape: StadiumBorder(),
                                      splashColor: Colors.orange,
                                      onPressed: () => {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Registration(),
                                          ),
                                        ),
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
