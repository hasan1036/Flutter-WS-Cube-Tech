import 'dart:async';

import 'package:flutter/material.dart';

class CrossFadeAnimation73 extends StatefulWidget {
  const CrossFadeAnimation73({Key? key}) : super(key: key);

  @override
  State<CrossFadeAnimation73> createState() => _CrossFadeAnimation73State();
}

class _CrossFadeAnimation73State extends State<CrossFadeAnimation73> {

  bool isFirst = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 10), () {
     reload();
    });
  }


  void reload(){
    setState(() {
      if(isFirst){
        isFirst = false;
      }else{
        isFirst = true;
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Foo Cross Animation")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            AnimatedCrossFade(
                firstChild: Container(width: 100, height: 100, color: Colors.grey.shade400,),
                sizeCurve: Curves.fastOutSlowIn,
                firstCurve: Curves.easeInOut,
                secondCurve: Curves.bounceInOut,
                secondChild: Image.asset('assets/images/boy.png'),
                crossFadeState: isFirst ? CrossFadeState.showFirst: CrossFadeState.showSecond ,
                duration: Duration(seconds: 2)),
            ElevatedButton(onPressed: (){

              setState(() {
              reload();
              });
            }, child: Text("Show"))
          ],
        ),
      ),
    );
  }
}
