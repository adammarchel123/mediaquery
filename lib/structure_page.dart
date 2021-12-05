import 'package:flutter/material.dart';
import 'package:mediaquery/structure_column.dart';

class StructurePage extends StatelessWidget {
  const StructurePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 35, 0, 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          StructureColumn(
              iconData: Icons.comment, color: 0xffEE615E, text: 'Chairman'),
          StructureColumn(
              iconData: Icons.phone, color: 0xff66B8E3, text: 'Representative'),
          StructureColumn(
              iconData: Icons.settings, color: 0xffF2BF4A, text: 'Treasurer'),
          StructureColumn(
              iconData: Icons.camera_alt, color: 0xff62C357, text: 'Osis'),
        ],
      ),
    );
  }
}
