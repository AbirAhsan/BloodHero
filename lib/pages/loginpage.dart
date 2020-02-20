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
            image: AssetImage("assets/rose.jpg"),
            fit: BoxFit.cover,
            color: Colors.red,
            colorBlendMode: BlendMode.colorBurn,
          )
        ],
      ),
    );
  }
}
