import 'package:flutter/material.dart';

class StackWidget_55 extends StatelessWidget {
  const StackWidget_55({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Excersice"),),
      body: Container(
        width: 300,
        height: 300,
        child: Stack(
          children: [
             Container(
               width: 200,
               height: 200,
               color: Colors.blueGrey,
             ),
             Positioned(
               left: 21,
               top: 21,
               child: Container(
                 width: 200,
                 height: 200,
                 color: Colors.grey,
               ),
             ),
          ],
        ),
      )
    );
  }
}
