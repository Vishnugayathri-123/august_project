import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: sample(),
          )));
}

class sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      )

      ), appBar: AppBar(
      title: Text("My app"),
    ),
        body: Container(
          color: Colors.purple,
          child: Column(
              children: [
          Padding(
          padding: const EdgeInsets.only(top: 300,left: 50,right: 50),
          child: Center(child: Image(image: AssetImage("2/image1.png"),height: 100,width: 100,)),
        ),
        Text(
            "welcome to flutter",
            style: TextStyle(
              fontSize: 30,
              color: Colors.red[900],
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,

              ],
    )));
  }
}
