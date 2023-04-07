import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;


  RoundedButton({
    required this.btnName,
    this.icon,
    this.bgColor=Colors.blue,
    this.textStyle,
    this.callback

});

  //RoundedButton({Key? key, required this.btnName, this.icon, required this.bgColor, this.textStyle, this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(onPressed: (){
      callback!();
    }, child:icon!=null? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon!,
        SizedBox( width: 11,),
        Text(btnName, style: textStyle,)
      ],
    ):Text(btnName, style: textStyle,),
    style: ElevatedButton.styleFrom(
      primary: bgColor,
      shadowColor: bgColor,
      shape: RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(11)
      )

    ),
    );

  }
}
