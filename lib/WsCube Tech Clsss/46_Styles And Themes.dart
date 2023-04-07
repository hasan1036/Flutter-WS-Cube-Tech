import 'package:flutter/material.dart';
import 'package:flutter_ws_cube_tech/ui_helper_46/util_46.dart';

class StylesAndThemes_46 extends StatelessWidget {
  const StylesAndThemes_46({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.lightGreen),
          subtitle2: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic, color: Colors.green),
        )
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('StylesAndTemes'),
   
        backgroundColor: Colors.teal,
        ),
        body: Column(
          children: [
            Text('Hello World 154', style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.orange)),
            Text('Hello World 2', style: Theme.of(context).textTheme.subtitle1),
            Text('Hello World 3', style: Theme.of(context).textTheme. headline2,),
            Text('Hello World 4', style: mTextStyle11(textColor: Colors.blue)),
          ],
        ),

      ),
    );
  }
}
