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
class DashBoardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var arrNames = ['Hasan', 'Jannat', 'Tanvir', 'Rohani', 'Nahar', 'Naima'];
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("CircleAvatar")),
        ),
        body: Center(
          child: CircleAvatar(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Name', style: TextStyle(color: Colors.black, fontSize: 25,),),
              ],
            ),
            backgroundImage: AssetImage('assets/images/boy.png'),
            backgroundColor: Colors.transparent,
            radius: 100,
          ),
        ),
    );
  }
}