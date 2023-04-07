import 'package:flutter/material.dart';

class FormFeild_48 extends StatelessWidget {
  const FormFeild_48({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    var _emailController = TextEditingController();
    var _passController = TextEditingController();


    return Scaffold(
      appBar: AppBar(title: Text("Form Feild 2"),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(

          key: _formKey,
          child: Column(
            children: [

              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Your Email';
                  }
                  return null;
                },

                controller: _emailController,

                  decoration: InputDecoration(
                  hintText: 'Inter Your Email',
                  labelText: 'Inter Your Email',
                  hintStyle: TextStyle(color: Colors.green, fontSize: 20),
                  labelStyle: TextStyle(color: Colors.green, fontSize: 20),
                  prefixIcon: Icon(Icons.email,color: Colors.teal),

                  focusedBorder: OutlineInputBorder(borderRadius:
                  BorderRadius.circular(20),borderSide: BorderSide(color: Colors.green, width: 5)),

                  enabledBorder: OutlineInputBorder(borderRadius:
                  BorderRadius.circular(20),borderSide: BorderSide(color: Colors.red, width: 2)),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),


              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Your Name';
                  }
                  return null;
                },
                controller: _passController,
                obscureText: true,
                obscuringCharacter: "*",

                  decoration: InputDecoration(
                  hintText: 'Inter Your Password',
                  labelText: 'Inter Your Password',
                  hintStyle: TextStyle(color: Colors.green, fontSize: 20),
                  labelStyle: TextStyle(color: Colors.green, fontSize: 20),
                  prefixIcon: Icon(Icons.lock,color: Colors.teal),
                  suffixIcon: Icon(Icons.visibility,color: Colors.teal),
                  suffixText: 'Exits',
                  focusedBorder: OutlineInputBorder(borderRadius:
                  BorderRadius.circular(30),borderSide: BorderSide(color: Colors.green, width: 2)),
                  enabledBorder: OutlineInputBorder(borderRadius:
                  BorderRadius.circular(30),borderSide: BorderSide(color: Colors.red, width: 2)),
                  border: OutlineInputBorder(),
                ),
              ),

              ElevatedButton(onPressed: (){
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }

                String uEmail = _emailController.text.toString();
                String uPass = _passController.text;
                print('Email: $uEmail, Pass: $uPass');

              }, child: Text("Click Me")),




            ],
          ),
        ),
      ),
    );
  }
}
