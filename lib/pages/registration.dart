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
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusScope.of(context).requestFocus(
              FocusScopeNode(),
            );
          },
          child: ListView(
            children: <Widget>[
              FormPage(),
            ],
          ),
        ));
  }
}
