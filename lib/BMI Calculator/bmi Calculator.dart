import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var result1 = "";
  var bgColor = Colors.indigo.shade200;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculatro'),),
      body:Container(
        color: bgColor,
        child: Center(
          child: Container(

            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("BMI", style: TextStyle(
                    fontSize: 34,
                  fontWeight: FontWeight.w700
                ),),

                SizedBox(height:  21,),

                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    label: Text('Enter your Weight(in Kgs)'),
                    prefixIcon: Icon(Icons.line_weight)
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height:  11,),
                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                    label: Text('Enter your Height(in Feet)'),
                    prefixIcon: Icon(Icons.height)
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height:  11,),
                TextField(
                  controller: inController,
                  decoration: InputDecoration(
                    label: Text('Enter your Height(in Feet)'),
                    prefixIcon: Icon(Icons.height)
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16,),

                ElevatedButton(onPressed: (){
                  var wt = wtController.text.toString();
                  var ft = ftController.text.toString();
                  var inch = inController.text.toString();
                  if(wt!= "" && ft!= "" && inch!= ""){
                    var iWt = int.parse(wt);
                    var iFt = int.parse(ft);
                    var iInch = int.parse(inch);

                     var tInch = (iFt*12) + iInch;

                     var tCm = tInch*2.54;

                     var tM =tCm/100;

                     var bmi = iWt/(tM*tM);

                     var msg = "";

                     if(bmi>25){
                       msg = "You're OverWeight!!";
                       bgColor = Colors.orange.shade200;
                     }else if(bmi<18){
                       msg = "You're UnderWeight";
                       bgColor = Colors.red.shade200;

                     }else{
                       msg = "You're Healthy!!";
                       bgColor = Colors.green.shade200;
                     }


                     setState((){
                       result1 = "$msg \n Your BMI is: ${bmi.toStringAsFixed(4)}";
                     });


                  }else{
                    setState(() {
                     result1 = "Please fill all required blanks";
                    });
                  }

                }, child: Text('Calculate')),
                SizedBox(height: 11,),
                Text(result1, style: TextStyle(fontSize: 19),),



              ],
            ),
          ),
        ),
      ) ,
    );
  }
}
