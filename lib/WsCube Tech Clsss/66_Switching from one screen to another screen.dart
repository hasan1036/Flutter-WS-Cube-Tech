import 'package:flutter/material.dart';

class SwitchingOneScreenToAnotherScreen_66 extends StatelessWidget {
  const SwitchingOneScreenToAnotherScreen_66({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("One Screen to Another Scren"),),
      body: Container(
        child: Container(
          color: Colors.blue.shade200,
        )
      )
    );
  }
}

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
    => Scaffold(
      appBar: AppBar(title: Text("Intro"),),
      body: Column(
        children: [
          Text("Welcome", style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold,),),
          SizedBox(height: 11,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){return SwitchingOneScreenToAnotherScreen_66();}));
           // Navigator.push(context, MaterialPageRoute(builder: (context)=>SwitchingOneScreenToAnotherScreen_66()));

          }, child: Text("Next")),

        ],
      ),
    );

}

