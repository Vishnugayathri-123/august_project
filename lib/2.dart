import 'dart:async';

import 'package:august_project/main.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';
void main(){
  runApp(DevicePreview(
      builder: (BuildContext contex) => MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: MyApp()
      )));

}

class Myapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyappState();
  }

class MyappState extends State<Myapp>{
  @override
  void initState() {
        Timer(Duration(seconds: 5), () {
          
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));
        });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
      color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.only(top: 300,left: 50,right:50),
        child: Center(
          child: Column(
            children: [
              Image(image: AssetImage("2/image1.png",),height: 100,width: 100,),
              Text(
                "welcome to flutter",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red[900],
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
    ),
    ),
    ],
    ),
    ),
    ),
      ));



  }
}

