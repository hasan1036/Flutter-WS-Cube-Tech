


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CurrentDateAndTime extends StatelessWidget {
  const CurrentDateAndTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();

    return Scaffold(
      appBar: AppBar(title: Text('Current Date and Time'),),
      body: Container(
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Current Time:${time.day}: ${time.hour}:${time.minute}:${time.second}", style: TextStyle(fontSize: 25),),
         ElevatedButton(onPressed: () {

         },child: Text("data"))

        ],
      )),
    );
  }
}
