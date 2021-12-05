import 'package:flutter/material.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: Text(
          'Welcome to Class \nStructure App',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
        ));
  }
}
