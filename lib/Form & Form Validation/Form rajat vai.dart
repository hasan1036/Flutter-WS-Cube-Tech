import 'package:flutter/material.dart';

class FormValidationRafatVai extends StatefulWidget {
  const FormValidationRafatVai({Key? key}) : super(key: key);

  @override
  State<FormValidationRafatVai> createState() => _FormValidationRafatVaiState();
}

class _FormValidationRafatVaiState extends State<FormValidationRafatVai> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextField(

                controller: _nameController,
                onChanged: (value){
                  //print(value);
                },
                onSubmitted: (value){
                  //print(value);
                },
                onTap: (){
                  print('Someone Tap');
                },
                decoration: InputDecoration(
                  hintText: "Enter your Name",
                  border: OutlineInputBorder()
                ),
              ),

              SizedBox(height: 21,),

              TextField(
                controller: _ageController,
                onChanged: (value){
                  //print(value);
                },
                onSubmitted: (value){
                  //print(value);
                },
                onTap: (){
                  print('Someone Tap');
                },
                decoration: InputDecoration(
                  hintText: "Enter your Age ",
                  border: OutlineInputBorder()
                ),
              ),


              ElevatedButton(onPressed: (){
                // print(_nameController.text);
                // print(_ageController.text);
               // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(_ageController.text)));
                //_controller.text = "Hello Brother";
                ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(content: Text("Hello"), actions:[
                  IconButton(onPressed: (){}, icon:Icon(Icons.add)),
                  Radio(value: true, groupValue: "djfl", onChanged: (value){}),
                ]));
              }, child: Text("Get Textfield Value"))
            ],
          ),
        ),
      ),
    );
  }
}
