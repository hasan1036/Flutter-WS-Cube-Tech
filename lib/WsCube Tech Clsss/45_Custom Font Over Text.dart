import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFontOverText_45 extends StatelessWidget {
  const CustomFontOverText_45({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Font"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World ",
              style: TextStyle(fontFamily: 'timeNewroom', fontSize: 15),),
            Text("Hello Flutter ",
            style: TextStyle(fontFamily:'Square',fontSize: 55),
            ),
            Text("Hello Bangladesh ",
            style: TextStyle(fontFamily:'Rubikiso',fontSize: 55),
            ),

            Text("This is Google Font",
            style: GoogleFonts.roboto(color: Colors.blue),
            ),

            Text("This is Google Font Poppins",
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 25),
            ),

            Text("This is Google Font sono",
            style: GoogleFonts.sono(color: Colors.black, fontSize: 25),
            ),


            Text("This is Google Font Playfair Display",
            style: GoogleFonts.playfairDisplay(color: Colors.black, fontSize: 25),
            ),


            Text("This is Google Font Bona Nova",
            style: GoogleFonts.bonaNova(color: Colors.black, fontSize: 25),
            ),


          ],
        ),
      ),
    );
  }
}
