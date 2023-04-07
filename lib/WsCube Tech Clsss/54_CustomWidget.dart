 import 'package:flutter/material.dart';

class CustomWidget54 extends StatelessWidget {
   const CustomWidget54({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text("Custom Widget"),),
       body: Container(
         child: Column(
           children: [


             CatItems(),Contact(),SubCatItems(),BottomMenu(),


 ],
         ),
       )
     );
   }
 }

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(

        color: Colors.amber,
        child: ListView.builder(itemBuilder: (context, index)=>Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.blue
            ),

          ),
        ),itemCount: 10, scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class SubCatItems extends StatelessWidget {
  const SubCatItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(

        color: Colors.grey,
        child: ListView.builder(itemBuilder: (context, index)=>Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.blue
            ),

          ),
        ),itemCount: 10, scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.red,
        child: ListView.builder(itemBuilder: (context, index)=>ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
          ),
          title: Text('Name'),
          subtitle: Text("Mob No"),
          trailing: Icon(Icons.delete),
        )),
      ),
    );
  }
}

class CatItems extends StatelessWidget {
  const CatItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(itemBuilder: (context, index)=>Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 100,
            child: CircleAvatar(
              backgroundColor: Colors.green,
            ),
          ),
        ),itemCount: 10, scrollDirection: Axis.horizontal,

        ),
      ),
    );
  }
}
