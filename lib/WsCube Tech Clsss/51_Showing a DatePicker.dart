import 'package:flutter/material.dart';

class ShowingDatePicker_51 extends StatefulWidget {
  const ShowingDatePicker_51({Key? key}) : super(key: key);

  @override
  State<ShowingDatePicker_51> createState() => _ShowingDatePicker_51State();
}

class _ShowingDatePicker_51State extends State<ShowingDatePicker_51> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Showing A Date Picker'),) ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Select Date'),
            ElevatedButton(onPressed: () async {

              DateTime? datePicked = await showDatePicker(
                context:context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2021),
                lastDate: DateTime(2040),
              );
              if(datePicked != null){
                print('Date Selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}');
              }
                }, child: Text("Show")),
            ElevatedButton(onPressed: ()async{
              TimeOfDay? pickedTime =await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                //initialEntryMode: TimePickerEntryMode.input,
                initialEntryMode: TimePickerEntryMode.dial
              );
              if(pickedTime!=null){
                print('Time selected: ${pickedTime.hour}: ${pickedTime.minute}');
              }
            }, child: Text("Select Time"))
          ],
        ),
      ),
    );
  }
}
