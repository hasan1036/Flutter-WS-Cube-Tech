import 'package:flutter/material.dart';

class GridView_52 extends StatelessWidget {
  const GridView_52({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.amber,
      Colors.red,
      Colors.orange,
      Colors.grey,
      Colors.blue,
      Colors.pink,
      Colors.green,
      Colors.purpleAccent,
      Colors.brown,

    ];
    return Scaffold(
      appBar: AppBar(title: Text("Grid View"),),
      body: GridView.count(crossAxisCount: 5,
      crossAxisSpacing: 11,
      mainAxisSpacing: 11,
      children: [
        Container(color: arrColors[0],),
        Container(color: arrColors[1],),
        Container(color: arrColors[2],),
        Container(color: arrColors[3],),
        Container(color: arrColors[4],),
        Container(color: arrColors[5],),
        Container(color: arrColors[6],),
        Container(color: arrColors[7],),
      ],
      )
    );
  }
}
