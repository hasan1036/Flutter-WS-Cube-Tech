
import 'package:flutter/material.dart';
class WrapWidget_57 extends StatelessWidget {
  const WrapWidget_57({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Wrap Widget"),),
        body: Container(
          child:Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.spaceEvenly,
            spacing: 11,
            runSpacing: 11,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.cyan,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.teal,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.purple,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.black,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.orange,
              ),

            ],
          ),
        )
    );
  }
}
