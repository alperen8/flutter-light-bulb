import 'package:flutter/material.dart';

import 'lamp.dart';

class LightSwitch extends StatefulWidget {
  const LightSwitch({Key key}) : super(key: key);

  @override
  _LightSwitchState createState() => _LightSwitchState();
}

class _LightSwitchState extends State<LightSwitch> {
  bool isLightOn = false;
  onPress() {
    setState(() {
      isLightOn = !isLightOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        children: [
          Lamp(isLightOn),
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
