import 'package:flutter/material.dart';
import 'package:se380_hw1/LightSwitch.dart';
import 'package:se380_hw1/lamp.dart';

class Classroom extends StatefulWidget {
  const Classroom({Key key}) : super(key: key);

  @override
  _ClassroomState createState() => _ClassroomState();
}

class _ClassroomState extends State<Classroom> {
  int colorCode = 1;
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
        children: [
          Lamp(isLightOn, colorCode),
          LightSwitch(isLightOn, onPress),
          DropdownButton(
              value: colorCode,
              items: [
                DropdownMenuItem(
                  child: Text("green"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("red"),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text("blue"),
                  value: 3,
                )
              ],
              onChanged: (int value) {
                setState(() {
                  colorCode = value;
                });
              })
        ],
      ),
    );
  }
}
