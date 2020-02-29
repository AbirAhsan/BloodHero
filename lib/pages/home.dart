import 'package:bloodhero/widgets/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';

class HomePage extends StatefulWidget {
//

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;

  List imgList;
  Future<String> loadJsonData() async {
    var jsonImages = await rootBundle.loadString('assets/images.json');
    setState(() {
      imgList = json.decode(jsonImages);
    });
    print(jsonImages);
    return jsonImages;
  }

  @override
  void initState() {
    super.initState();
    this.loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.deepOrange,
      ),
      drawer: DrawerApp(),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                CarouselSlider(
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayCurve: Curves.linearToEaseOut,
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayAnimationDuration: Duration(milliseconds: 2000),
                  height: 200.0,
                  initialPage: 0,
                  onPageChanged: (index) {
                    setState(() {
                      _current = index;
                    });
                  },
                  items: imgList.map((img) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width * .7,
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Image.network(
                            img["imgUrl"],
                            fit: BoxFit.fill,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
