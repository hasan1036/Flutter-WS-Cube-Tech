import 'package:flutter/material.dart';

class CallBackFunction_52 extends StatelessWidget {
  const CallBackFunction_52({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    callBack(){
      print("Clicked!!");
    }
    return Scaffold(
      appBar: AppBar(title: Text("Call Bake Function"),),
      body: ElevatedButton(onPressed: callBack,child: Text("data")),
    );
  }
}
