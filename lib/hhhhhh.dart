import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext contex) =>
          MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: hotell(),
          )));
}
class hotell extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.teal,
          floating: true,pinned: true,
          expandedHeight: 200,
          //  flexibleSpace:Container(color: Colors.black,),
          title: Padding(
            padding: const EdgeInsets.only(left: 75.0),
            child: Text("Conversations",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          actions: [TextButton(onPressed: (){}, child: Text("+ Add new", style: TextStyle(color: Colors.red),),
          ),
          ],bottom: AppBar(backgroundColor: Colors.white,
          elevation: 0,
          title: Container(decoration: BoxDecoration(color: Colors.white),
            child: TextField(decoration:InputDecoration(hintText:"Search..."),),
          ),
        ),
        ),
      ],));
  }

}