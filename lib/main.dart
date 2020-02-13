import 'package:flutter/material.dart';
import 'pages/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.deepOrangeAccent),
    debugShowCheckedModeBanner: false,
    home: BloodHero(),
  ));
}

class BloodHero extends StatefulWidget {
  @override
  _BloodHeroState createState() => _BloodHeroState();
}

class _BloodHeroState extends State<BloodHero> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
