import 'package:flutter/material.dart';

class RangeSlide_69 extends StatefulWidget {

 RangeSlide_69({Key? key}) : super(key: key);

  @override
  State<RangeSlide_69> createState() => _RangeSlide_69State();
}

class _RangeSlide_69State extends State<RangeSlide_69> {
  RangeValues values = RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      appBar: AppBar(title: Text("Range Slider Widget's"),),
      body: Center(
        child: RangeSlider(

            values: values,
            labels: labels,
            divisions: 20,
            activeColor: Colors.green,
            inactiveColor: Colors.amber,
            min: 0,
            max: 100,
            onChanged: (newValue){
          values = newValue;
          print('${newValue.start}, ${newValue.end}');
          setState(() {

          });
        }),
      )
    );
  }
}
