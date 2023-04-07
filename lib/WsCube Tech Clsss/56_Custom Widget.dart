import 'package:flutter/material.dart';
import 'package:flutter_ws_cube_tech/ui_helper_46/util_46.dart';
import 'package:flutter_ws_cube_tech/widgets/rounded_btn.dart';

class CustomWidget_56 extends StatelessWidget {
  const CustomWidget_56({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Custom Widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 50,
                child: RoundedButton(
                  btnName: 'Play',
                  icon: Icon(Icons.play_arrow),
                  textStyle: mTextStyle16(),
                  callback: () {
                    print("Logged in!!");
                  },
                ),
              ),
              Container(
                height: 11,
              ),
              Container(
                width: 150,
                height: 50,
                child: RoundedButton(
                  btnName: 'Press',
                  bgColor: Colors.orange,
                  textStyle: mTextStyle21(),
                  callback: () {
                    print("Logged in!!");
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
