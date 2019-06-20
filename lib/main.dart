import 'package:flutter/material.dart';
import 'package:flutter_mvp/home/home_page.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MVP Design Pattern',
      theme: new ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.white,
          fontFamily: 'Montserrat',
          primaryColorBrightness: Brightness.light),
      home: HomePage(),
    );
  }
}
