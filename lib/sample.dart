import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:sample(),));
}

class sample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My App"),),
      body: Center(child: Text("welcome to flutter",style: TextStyle(fontSize:30 ,color: Colors.red),)),

    );
  }


}