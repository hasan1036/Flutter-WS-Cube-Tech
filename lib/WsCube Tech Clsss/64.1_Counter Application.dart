import 'package:flutter/material.dart';

class CounterApplication extends StatefulWidget {
  const CounterApplication({Key? key}) : super(key: key);

  @override
  State<CounterApplication> createState() => _CounterApplicationState();
}

class _CounterApplicationState extends State<CounterApplication> {
    var _count = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Count ${_count}"),
              SizedBox(height: 40,),
              FloatingActionButton(onPressed: (){
                _count ++;
                setState(() {

                });
              }, child: Icon(Icons.add),),

            ],
          ),
        ),

      ),
    );
  }
}
