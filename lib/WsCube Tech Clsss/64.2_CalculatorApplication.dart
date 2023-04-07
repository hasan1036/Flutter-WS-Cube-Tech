import 'package:flutter/material.dart';

class CalculatorApplication_64 extends StatefulWidget {
  const CalculatorApplication_64({Key? key}) : super(key: key);

  @override
  State<CalculatorApplication_64> createState() => _CalculatorApplication_64State();
}

class _CalculatorApplication_64State extends State<CalculatorApplication_64> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Claculator Application"),),
      body:Container(
             color: Colors.blue.shade100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                ),

                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                  decoration: InputDecoration(

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var sum = no1 + no2;
                        result = 'The sum of $no1 of $no2 is $sum';
                        setState((){

                        });
                      }, child:Text('Add') ),



                      SizedBox(width: 5,),
                      ElevatedButton(onPressed: (){

                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var diff = no1 - no2;
                        result = 'The Difference between $no1 of $no2 is $diff';
                        setState((){

                        });
                      }, child:Text('Sub') ),
                      SizedBox(width: 5,),
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var product = no1 * no2;
                        result = 'The Product of $no1 of $no2 is $product';
                        setState((){

                        });
                      }, child:Text('Mult') ),
                      SizedBox(width: 5,),
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var times = no1 / no2;
                        //result = 'The $no1 can be divided by $no2, $times times';
                        result = 'The $no1 can be divided by $no2, ${times.toStringAsFixed(2)} times';
                        
                        setState((){

                        });
                      }, child:Text('Div') ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(21),
                child:Text(result,style: TextStyle(fontSize: 25, color: Colors.white),),)
              ],
            ),
          ),
        ),
      )
    );
  }
}
