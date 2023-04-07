import 'package:flutter/material.dart';

class RippleAnimation_80 extends StatefulWidget {
  const RippleAnimation_80({Key? key}) : super(key: key);

  @override
  State<RippleAnimation_80> createState() => _RippleAnimation_80State();
}

class _RippleAnimation_80State extends State<RippleAnimation_80>with SingleTickerProviderStateMixin{
  late Animation _animation;
  late AnimationController _animationController;


  var listRadius = [150.0, 200.0, 250.0, 300.0, 350.0];

  @override
  void initState() {

    super.initState();
     _animationController = AnimationController(vsync: this, duration: Duration(seconds: 10));
   // _animation = Tween(begin: 0.0, end: 5.0 ).animate(_animationController);
    _animationController.addListener(() {

    });

    _animationController.forward();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ripple Animation"),),
      body: Center(
        child: Stack(
          alignment: Alignment.center,

          children:listRadius.map((radius) => Container(
            width: radius*_animationController.value,
            height: radius*_animationController.value,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.withOpacity(1.0-_animationController.value)
            ),

          )).toList(),
        ),
      ),
    );
  }
}
