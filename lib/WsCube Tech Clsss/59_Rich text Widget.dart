import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RichWidget_59 extends StatelessWidget {
  const RichWidget_59({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Excersice"),),
        body: RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.grey,
              fontSize: 21,
            ),
            children:<TextSpan>[
              TextSpan(text: 'Hello ', ),
              TextSpan(text: 'World! ', style: TextStyle(fontSize: 18, color: Colors.blue, fontWeight: FontWeight.bold)),
              TextSpan(text: 'Welcome to ',),
              TextSpan(text: 'Flutter', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,
              fontSize: 35, color: Colors.deepOrangeAccent,
              fontStyle:FontStyle.italic,

              )),

            ]
          ),
        )
    );
  }
}
