//intl: ^0.18.0

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormate_56 extends StatelessWidget {
  const DateFormate_56({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(title: Text("Date Formate"),),
      body: Container(
        height: 200,
        width: 200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Current Time: ${DateFormat('jms').format(time)}',),
            ],
          ),
        ),
      ),
    );
  }
}
