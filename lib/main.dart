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
         child: Center(
           child: Container(
             width: 100,
             height: 100,
             decoration: BoxDecoration(
               color: Colors.red,
              // borderRadius: BorderRadius.circular(21),
               border: Border.all(
                 width: 2,
                 color: Colors.black
               ),
               boxShadow: [
                 BoxShadow(
                   blurRadius: 11,
                   spreadRadius: 8,
                   color: Colors.grey
                 )
               ],
               shape: BoxShape.circle

             ),
           ),
         ),
       ) ,
     );
   }

}