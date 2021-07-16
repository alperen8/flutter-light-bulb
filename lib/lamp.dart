import 'package:flutter/material.dart';

class Lamp extends StatelessWidget {
  const Lamp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: EdgeInsets.all(5),
      child: Text('OFF'),
    );
  }
}
