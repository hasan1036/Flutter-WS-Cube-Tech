import 'package:flutter/material.dart';

class PositionedWidget_62 extends StatelessWidget {
  const PositionedWidget_62({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Positioned Widget"),),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blueGrey,
        child: Stack(
          children: [
            Positioned(
              bottom: 41,
              right: 41,

              child: Container(
                width: 100,
                height: 100,
                color: Colors.white
              ),
            )
          ],

        ),
      )
    );
  }
}
