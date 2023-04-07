import 'package:flutter/material.dart';

class SizedBoxWidget58 extends StatelessWidget {
  const SizedBoxWidget58({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(title: Text("Excersice"),),
        body:ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 100,
            minWidth: 100,
            maxWidth: 30,
            maxHeight: 20
          ),
          child: SizedBox.shrink(
              child: ElevatedButton(onPressed: (){}, child: Text("Click"),),
            ),
        )


          //
          //   child: SizedBox.expand(
          //   child: ElevatedButton(onPressed: (){}, child: Text("Click"),),
          // )
          //



          //
          // SizedBox(
          //   width: 200,
          //   height: 50,
          //   child: ElevatedButton(onPressed: (){}, child: Text("Click"),),
          // ),
          //


    );
  }
}
