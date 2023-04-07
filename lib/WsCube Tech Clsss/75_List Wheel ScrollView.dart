import 'package:flutter/material.dart';

class ListWheelScroolView_75 extends StatefulWidget {
  const ListWheelScroolView_75({Key? key}) : super(key: key);

  @override
  State<ListWheelScroolView_75> createState() => _ListWheelScroolView_75State();
}

class _ListWheelScroolView_75State extends State<ListWheelScroolView_75> {

  var arrIndex = [
    1,2,3,4,5,6,7,8,9,10,12
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('3D List'),
        ),
        body: Center(
          child: ListWheelScrollView(
              itemExtent: 200,
              children:arrIndex.map((value) =>  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(child: Text('${value}', style: TextStyle(fontSize: 21, color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(21)
                  ),
                  width:double.infinity,

                ),
              ),).toList()

          ),
        ));
  }
}
