//import 'package:cached_network_image/cached_network_image.dart';
// @dart=2.9
import 'package:flutter_svg/svg.dart';
import 'package:splashscreen/splashscreen.dart';

import 'package:flutter/material.dart';

import 'myHomePage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: SplashScreen(
          seconds: 2,
          navigateAfterSeconds: MyHomePage(),
          image: Image.asset(
            "assets/Frame 14.png",
            alignment: Alignment.center,
          ),
          photoSize: 100.0,
          backgroundColor: Color.fromRGBO(243, 238, 217, 1),
          styleTextUnderTheLoader: new TextStyle(),
          loaderColor: Color.fromRGBO(248, 126, 13, 1),
        ),
      ),
    );
  }
}
