import 'package:flutter/material.dart';

class HomePageSharedPreference extends StatelessWidget {
  const HomePageSharedPreference({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home")),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
            child: Icon(
          Icons.home,size: 100,
          color: Colors.white.withOpacity(0.5),

        )),
      ),
    );
  }
}
