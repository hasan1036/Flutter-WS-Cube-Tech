import 'package:flutter/material.dart';

class MappingLists_78 extends StatefulWidget {
  const MappingLists_78({Key? key}) : super(key: key);

  @override
  State<MappingLists_78> createState() => _MappingLists_78State();
}

class _MappingLists_78State extends State<MappingLists_78> {
  var arrData = [

    {
      'name': 'Raman',
      'mobno': '2342435351',
      'userad': '1'
    },
    {
      'name': 'Rahul',
      'mobno': '2342435352',
      'userad': '2'
    },
    {
      'name': 'Rajeev',
      'mobno': '2342435353',
      'userad': '3'
    },
    {
      'name': 'Raj',
      'mobno': '2342435354',
      'userad': '4'
    },
    {
      'name': 'Rohan',
      'mobno': '2342435355',
      'userad': '5'
    },
    {
      'name': 'Ramesh',
      'mobno': '2342435356',
      'userad': '6'
    },
    {
      'name': 'Ravi',
      'mobno': '2342435357',
      'userad': '7'
    },

    {
      'name': 'Rajveer',
      'mobno': '2342435358',
      'userad': '8'
    },



    {
      'name': 'Rohit',
      'mobno': '2342435359',
      'userad': '9'
    },


    {
      'name': 'Rajan',
      'mobno': '23424353510',
      'userad': '10'
    },
    {
      'name': 'Rocky',
      'mobno': '23424353511',
      'userad': '11'
    },

/*
    'Raman',
    'Rahul',
    'Rajeev',
    'Raj',
    'Rohan',
    'Ramesh',
    'Ravi',
    'Rajveer',
    'Rohit',
    'Rajan',
    'Ritu',
    'Rocky',
    */

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mapping Lists"),
      ),



      body: Container(

        child: ListView(
            children: arrData
                .map((value) =>ListTile(

              leading: Icon(Icons.account_circle),
              title: Text(value['name'].toString()),
              subtitle: Text(value['mobno'].toString()),
              trailing: CircleAvatar(
                  radius: 21,
                  backgroundColor: Colors.green,
                  child: Text(value['userad'].toString())),
            ) )
                .toList()),
      ),

     /*
      body: Container(

        child: ListView(
            children: arrData
                .map((value) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: Colors.blue.shade100,
                    ),


              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text(value)),
              ),
                      ),
                ))
                .toList()),
      ),
      */



    );
  }
}
