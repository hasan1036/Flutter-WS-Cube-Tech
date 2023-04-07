import 'package:flutter/material.dart';

class StatefulAndStatelessWidget extends StatefulWidget {
  const StatefulAndStatelessWidget({Key? key}) : super(key: key);

  @override
  State<StatefulAndStatelessWidget> createState() => _StatefulAndStatelessWidgetState();
}

class _StatefulAndStatelessWidgetState extends State<StatefulAndStatelessWidget> {
  var _c = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("State Full Widget"),),
      body: Center(
        child: Column(
          children: [
            Text("Count: $_c", style: TextStyle(fontSize: 24),),
            ElevatedButton(onPressed: (){

              setState(() {
                _c++;
                print(_c);
              });
            }, child: Text("Click Me"))
            
          ],
        ),
      ),
    );
  }
}
