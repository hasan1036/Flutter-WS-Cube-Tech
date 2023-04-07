import 'package:flutter/material.dart';

class ConstraintWidget_65 extends StatelessWidget {
  const ConstraintWidget_65({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Constraint Widget"),),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 300,
          minWidth: 200,
          maxHeight: 300,
          minHeight: 100

        ),
        child: ElevatedButton(onPressed: (){}, child: Text("Click"),),
    ),
    );
  }
}
