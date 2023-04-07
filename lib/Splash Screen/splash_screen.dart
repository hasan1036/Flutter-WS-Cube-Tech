import 'dart:async';

import 'package:flutter/material.dart';

import '../WsCube Tech Clsss/63_StateFul & Stateless Widget.dart';
import '../WsCube Tech Clsss/64.2_CalculatorApplication.dart';

class SplashScreen_67 extends StatefulWidget {
  const SplashScreen_67({Key? key}) : super(key: key);

  @override
  State<SplashScreen_67> createState() => _SplashScreen_67State();
}

class _SplashScreen_67State extends State<SplashScreen_67> {
  @override


  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CalculatorApplication_64()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(child: Text("Classic", style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w700,
          color: Colors.white
        ),),),
      ),
    );
  }
}
