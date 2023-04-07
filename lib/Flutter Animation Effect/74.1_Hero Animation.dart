import 'package:flutter/material.dart';

import '74.2_detail_page.dart';

class Hero_Animation_74 extends StatefulWidget {
  const Hero_Animation_74({Key? key}) : super(key: key);

  @override
  State<Hero_Animation_74> createState() => _Hero_Animation_74State();
}

class _Hero_Animation_74State extends State<Hero_Animation_74> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Animation"),),
      body: Container(
        child: Center(
          child: InkWell(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage()));
              } ,
              child: Hero(tag: 'background', child: Image.asset('assets/images/boy.png', width: 150,height: 100,))),
        ),
      ),
    );
  }
}
