import 'package:flutter/material.dart';
import 'package:mediaquery/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Color(0xff6451E3),
      ),
      home: HomePage(),
    );
  }
}


