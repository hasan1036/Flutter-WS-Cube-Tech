import 'package:flutter/material.dart';

class Animation71 extends StatefulWidget {
  @override
  State<Animation71> createState() => _Animation71State();
}

class _Animation71State extends State<Animation71> {
  var _width = 200.0;

  var _height = 100.0;

  bool flag = true;

  Color bgColor = Colors.grey;

  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blueGrey
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Foo Animation"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           AnimatedContainer(
               //color: bgColor,
               width: _width,
               height: _height,
               decoration: myDecor,

               duration: Duration(seconds: 2)),
            ElevatedButton(onPressed: (){

               setState(() {

                 if(flag){
                   _width =  100.0;
                   _height = 200.0;
                   //curve: Curves.fastOutSlowIn;
                   curve:Curves.bounceInOut;
                   // bgColor = Colors.orange;
                    myDecor = BoxDecoration(
                      borderRadius: BorderRadius.circular(52),
                      color: Colors.orange,
                    );
                   flag = false;
                 }else{
                   _width = 200.0;
                   _height = 100.0;
                   //curve: Curves.fastOutSlowIn;
                 //  bgColor = Colors.blueGrey;
                   myDecor = BoxDecoration(
                     borderRadius: BorderRadius.circular(2),
                     color: Colors.blueGrey
                   );
                   flag = true;
                 }

               });

            }, child: Text("Animate"))

          ],
        ),
      )
    );
  }
}
