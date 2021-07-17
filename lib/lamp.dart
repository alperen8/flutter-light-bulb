import 'package:flutter/material.dart';

class Lamp extends StatelessWidget {
  const Lamp(this.isLit, this.colorCode, {Key key}) : super(key: key);
  final bool isLit;
  final int colorCode;

  colorSelector() {
    if (colorCode == 1) {
      return Colors.green;
    }
    if (colorCode == 2) {
      return Colors.red;
    }
    if (colorCode == 3) {
      return Colors.blue;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isLit ? colorSelector() : Colors.red,
      padding: EdgeInsets.all(5),
      child: Text(isLit ? "On" : "Off"),
    );
  }
}
