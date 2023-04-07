import 'package:flutter/material.dart';

class AddGradient_77 extends StatefulWidget {
  const AddGradient_77({Key? key}) : super(key: key);

  @override
  State<AddGradient_77> createState() => _AddGradient_77State();
}

class _AddGradient_77State extends State<AddGradient_77> {

  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var result = "Result";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: Text("Add Gradient"),
      ),
            body:Container(
              decoration: BoxDecoration(

                  //LinearGradient

                gradient: RadialGradient(colors: [
                  Color(0xfffad0c4),
                  Color(0xffeb969a),

                ],
                // begin: FractionalOffset(1.0, 0.5),
                //   end: FractionalOffset(0.0, 0.5),
                    center: Alignment.topLeft,
                   stops: [0.0, 1.0]
                ),

              ),

              child: Padding(
                padding: const EdgeInsets.all(21.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(),
                      TextField(),
                      TextField(),
                      ElevatedButton(onPressed: (){}, child: Text("Submit")),

                    ],

                  ),
                ),
              ),

            ) ,

    );
  }
}
