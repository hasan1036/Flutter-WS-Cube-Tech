import 'package:flutter/material.dart';

class Animatd_Opaciy_72 extends StatefulWidget {
 // const Animatd_Opaciy_72({Key? key}) : super(key: key);



  @override
  State<Animatd_Opaciy_72> createState() => _Animatd_Opaciy_72State();
}

class _Animatd_Opaciy_72State extends State<Animatd_Opaciy_72> {


  var myOpacity = 1.0;
  var isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Opacity"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(opacity: myOpacity, duration: Duration(seconds: 4),curve: Curves.bounceInOut, child: Container(
              width: 200,
              height: 100,
              color: Colors.blue,
            ),),
            ElevatedButton(onPressed: (){

              setState(() {
                if(isVisible){
                  myOpacity = 0.0;
                  isVisible = false;
                }else{
                  myOpacity = 1.0;
                  isVisible = true;
                }


              });

            }, child: Text("Close")),
          ],
        ),
      )
    );
  }
}
