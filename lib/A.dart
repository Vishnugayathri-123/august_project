



import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Fitted()
      )
  )
  );
}
class  Fitted extends StatefulWidget{
  @override
  State< Fitted > createState() => _Fitted();
}

class _Fitted extends State< Fitted > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue[100],
    body: SafeArea(
        child: SingleChildScrollView(
        child:
    Container(
    color:Colors.black26,
        width:200.0,
        height:200.0,
      child: FittedBox(
        fit: BoxFit.none,
      child: Container(
        color: Colors.teal,
        width: 100.0,
        height: 50.0,
        child: Center(
          child: Text('Woolha.com' ,style: TextStyle(color: Colors.white)),
        )
      ),

    ),
    )
    ),
  }