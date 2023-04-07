import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details Page"),),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            child: Hero(tag: 'background', child: Image.asset('assets/images/boy.png',)),
          ),
        ),
      ),
    );
  }
}
