import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: FittedBox(),));
}
class FittedBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Expanded Widget"),
       backgroundColor: Colors.amberAccent,
     ),
     body: Center(
       child: Container(
         height: 500,
         width: 400,
         color: Colors.redAccent,
         child: FittedBox(
           fit:BoxFit.none,
           alignment:Alignment.center
         ),
       ),
     ),
   );
  }

}