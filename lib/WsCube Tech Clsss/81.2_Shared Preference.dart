import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference3 extends StatefulWidget {
  const SharedPreference3({Key? key}) : super(key: key);

  @override
  State<SharedPreference3> createState() => _SharedPreference3State();
}

  class _SharedPreference3State extends State<SharedPreference3> {
    int _count = 0;

    void _incressValue()async{
      final sharePreference1 =await SharedPreferences.getInstance();
      setState(() {
        _count++;
      });
      sharePreference1.setInt("count", _count);
    }


    @override
  void initState() {
    super.initState();
    _incressValue2();
  }

  void _incressValue2()async{
      final sharedPreference2 =await SharedPreferences.getInstance();
      setState(() {
        _count = sharedPreference2.getInt("count")?? 0;
      });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Text("Count:- $_count"),
            SizedBox(height: 50,),
            FloatingActionButton(onPressed: _incressValue, child: Icon(Icons.add_circle_outline),)
            
          ],
        ),
      ),
    );
  }
}
