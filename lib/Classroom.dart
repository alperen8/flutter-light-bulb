import 'package:flutter/material.dart';
import 'package:se380_hw1/LightSwitch.dart';
import 'package:se380_hw1/lamp.dart';

class Classroom extends StatefulWidget {
  const Classroom({Key key}) : super(key: key);

  @override
  _ClassroomState createState() => _ClassroomState();
}

class _ClassroomState extends State<Classroom> {
  bool isLightOn = false;
  onPress() {
    setState(() {
      isLightOn = !isLightOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.all(5),
      child: Column(
        children: [Lamp(isLightOn), LightSwitch(isLightOn, onPress)],
      ),
    );
  }
}
