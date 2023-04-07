import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesomeIcons_61 extends StatelessWidget {
  const FontAwesomeIcons_61({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Font Awesome Icons"),),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add_business_sharp),
              SizedBox(width: 10,),
              FaIcon(FontAwesomeIcons.amazon, color: Colors.amberAccent,)
            ],
          ),
        )
    );
  }
}
