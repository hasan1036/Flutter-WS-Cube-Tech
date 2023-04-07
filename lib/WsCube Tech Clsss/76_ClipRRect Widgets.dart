import 'package:flutter/material.dart';

class ClipRRect76 extends StatefulWidget {
  const ClipRRect76({Key? key}) : super(key: key);

  @override
  State<ClipRRect76> createState() => _ClipRRect76State();
}

class _ClipRRect76State extends State<ClipRRect76> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Center(

        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(21),
              topRight: Radius.circular(21),
              bottomLeft: Radius.circular(21),
              bottomRight: Radius.circular(1)),


          child:Image.asset('assets/images/boy.png', width: 400, height: 200, fit: BoxFit.fill,)
        ),
      ),
    );
  }
}
