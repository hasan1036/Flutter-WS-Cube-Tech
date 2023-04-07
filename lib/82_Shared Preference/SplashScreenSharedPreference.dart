import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ws_cube_tech/82_Shared%20Preference/HomePageSharedPreference.dart';
import 'package:flutter_ws_cube_tech/82_Shared%20Preference/LoginScreenSharedPreference.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenSharedPreference extends StatefulWidget {
  const SplashScreenSharedPreference({Key? key}) : super(key: key);

  @override
  State<SplashScreenSharedPreference> createState() =>
      SplashScreenSharedPreferenceState();
}

class SplashScreenSharedPreferenceState extends State<SplashScreenSharedPreference> {

  static const String KEYLOGIN = "Login";

  @override
  void initState() {
    super.initState();

   /*
   Timer(Duration(seconds: 2), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LoginScreenSharedPreference()));
    });
    */
   whereToGo();

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Icon(
            Icons.account_circle,
            size: 100,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  void whereToGo()async{
      var sharedPref =await SharedPreferences.getInstance();
     var isLoggedIn =  sharedPref.getBool(KEYLOGIN);
      Timer(Duration(seconds: 2), () {
        if(isLoggedIn!=null){
         if(isLoggedIn){
           Navigator.push(
               context,
               MaterialPageRoute(
                   builder: (context) => HomePageSharedPreference()));
         }else{
           Navigator.push(
               context,
               MaterialPageRoute(
                   builder: (context) => LoginScreenSharedPreference()));
         }


        }else{
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => LoginScreenSharedPreference()));
        }

      });
  }
}
