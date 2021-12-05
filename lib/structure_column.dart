import 'package:flutter/material.dart';

class StructureColumn extends StatelessWidget {
  const StructureColumn(
      {Key? key,
      required this.color,
      required this.iconData,
      required this.text})
      : super(key: key);

  final int color;
  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 7,
          height: MediaQuery.of(context).size.width / 7,
          decoration: BoxDecoration(
              color: Color(color),
              borderRadius:
                  BorderRadius.circular(MediaQuery.of(context).size.width / 7)),
          child: Icon(
            iconData,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(text, style: TextStyle(fontSize: 12))
      ],
    );
  }
}