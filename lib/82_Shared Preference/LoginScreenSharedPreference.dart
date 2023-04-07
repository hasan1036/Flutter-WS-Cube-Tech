import 'package:flutter/material.dart';
import 'package:flutter_ws_cube_tech/82_Shared%20Preference/HomePageSharedPreference.dart';
import 'package:flutter_ws_cube_tech/82_Shared%20Preference/SplashScreenSharedPreference.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreenSharedPreference extends StatefulWidget {
  const LoginScreenSharedPreference({Key? key}) : super(key: key);

  @override
  State<LoginScreenSharedPreference> createState() => _LoginScreenSharedPreferenceState();
}

class _LoginScreenSharedPreferenceState extends State<LoginScreenSharedPreference> {
  var uNameController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.account_circle, size: 100, color: Colors.blue,),
              SizedBox(height: 11,),
              TextField(
                controller: uNameController,
                decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(21)

                  )

                ),

              ),
              SizedBox(height: 11,),
               TextField(
                 controller: passController,
                 decoration: InputDecoration(
                   hintText: "Enter You Email",
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(21)
                   )
                 ),


               ),
              SizedBox(height: 11,),
              ElevatedButton(onPressed: ()async{
                //If Successfully Logged in (Creds are Correct)

                var sharedPref =await SharedPreferences.getInstance();
                sharedPref.setBool(SplashScreenSharedPreferenceState.KEYLOGIN, true);



                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePageSharedPreference()));
              }, child: Text("Login"))
            ],

          ),
        ),
      ),
    );
  }
}
