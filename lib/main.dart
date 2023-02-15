import"package:flutter/material.dart";

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: DashBoardScreen(),
    );
  }
}
class DashBoardScreen extends StatelessWidget{

   @override
  Widget build(BuildContext context){
     return Scaffold(
       appBar: AppBar(
         title: Text("Decoration to Container"),
       ),
       body:Column(
         children: [
           Expanded(
             flex: 2,
             child: Container(
               height:100,
               color: Colors.blue
             ),
           ),
           Expanded(
             flex: 4,
             child: Container(
               height:100,
               color: Colors.orange
             ),
           ),
           Expanded(
             flex: 2,
             child: Container(
               height:100,
               color: Colors.blueGrey
             ),
           ),
           Expanded(
             flex: 3,
             child: Container(
               height:100,
               color: Colors.green
             ),
           ),
         ],
       ) ,
     );
   }

}