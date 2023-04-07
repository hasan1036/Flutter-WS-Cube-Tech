import 'package:flutter/material.dart';

class CardWidget_47 extends StatelessWidget {
  const CardWidget_47({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card Widget"),backgroundColor: Colors.green,),
      body: Center(
        child: Card(
            elevation: 15,
            shadowColor: Colors.blue,

            child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text("Hello World!", style: TextStyle(fontSize: 25),),
        )),
      ),
    );
  }
}
