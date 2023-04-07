import 'package:flutter/material.dart';

class PassingDataFromOneToAnotherScreen_68 extends StatelessWidget {
  var nameController = TextEditingController();

 PassingDataFromOneToAnotherScreen_68({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Passing Data From one To Another Screen"),),
      body:Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("DashBoard Screen", style: TextStyle(fontSize: 25),),
              SizedBox(height: 11,),
              TextField(
                controller:nameController ,
              ),
              SizedBox(height: 11,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen(nameController.text.toString())));
              }, child: Text("My Profile")),
            ],
          ),
        ),
      )
    );
  }
}
class ProfileScreen extends StatelessWidget {
  final nameFromHome;

   ProfileScreen(this.nameFromHome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyProfile"),),
      
      body: Container(
        color: Colors.blueGrey.shade200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome $nameFromHome", style: TextStyle(fontSize: 24, color: Colors.white),),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Back')),
            ],
          ),
        ),
      )
    );
  }
}

