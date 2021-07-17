import 'package:flutter/material.dart';

import 'lamp.dart';

class LightSwitch extends StatelessWidget {
  const LightSwitch(this.isLightOn, this.onPress, {Key key}) : super(key: key);

  final bool isLightOn;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        children: [
          MaterialButton(
            onPressed: onPress,
            padding: EdgeInsets.all(5),
            color: Colors.blue,
            child: Text(!isLightOn ? "Turn on" : "Turn off"),
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
