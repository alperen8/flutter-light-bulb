import 'package:flutter/material.dart';

class LightSwitch extends StatelessWidget {
  const LightSwitch({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: MaterialButton(
        onPressed: () => {},
        padding: EdgeInsets.all(5),
        color: Colors.blue,
        child: Text('Turn off'),
        textColor: Colors.white,
      ),
    );
  }
}
