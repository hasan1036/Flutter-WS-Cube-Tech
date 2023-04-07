import 'package:flutter/material.dart';

class TweenAnimation_79 extends StatefulWidget {
  const TweenAnimation_79({Key? key}) : super(key: key);

  @override
  State<TweenAnimation_79> createState() => _TweenAnimation_79State();
}

class _TweenAnimation_79State extends State<TweenAnimation_79> with SingleTickerProviderStateMixin{

  late Animation animation;
  late AnimationController animationController;
  late AnimationController colorAnimation;

  @override
  void initState() {

    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = Tween(begin:200.0, end: 2.0).animate(animationController);
    //colorAnimation = ColorTween(begin: Colors.blue, end: Colors.orange).animate(animationController);
    
    animationController.addListener(() {
      print(animation.value);
      setState(() {

      });
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tween Animation"),),
      body: Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          color: Colors.green,
        ),
      ),
    );
  }
}
