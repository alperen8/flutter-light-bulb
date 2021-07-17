import 'package:flutter/material.dart';

class Lamp extends StatelessWidget {
  const Lamp(this.isLit, {Key key}) : super(key: key);
  final bool isLit;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: EdgeInsets.all(5),
      child: Text(isLit ? "On" : "Off"),
    );
  }
}
