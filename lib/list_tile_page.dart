import 'package:flutter/material.dart';

class ListTilePage extends StatelessWidget {
  const ListTilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Good Morning',
        style: TextStyle(fontSize: 12),
      ),
      subtitle: Text('Jordhan Figueroa',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black)),
      trailing: Icon(Icons.notification_add_outlined),
    );
  }
}
