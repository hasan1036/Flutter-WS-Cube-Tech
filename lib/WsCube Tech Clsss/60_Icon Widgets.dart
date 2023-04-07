import 'package:flutter/material.dart';

class IconWidget_60 extends StatelessWidget {
  const IconWidget_60({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Excersice"),
        ),
        body: Center(
          child: Icon(
            Icons.play_circle_outline,
            size: 100,
            color: Colors.orange,
          ),
        ));
  }
}
