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
       body:Container(
         width: double.infinity,
         height: double.infinity,
         color: Colors.blue.shade50,

       ) ,
     );
   }

}