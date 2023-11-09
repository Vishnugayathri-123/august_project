import 'package:august_project/tab4.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(DevicePreview(
      builder: (BuildContext contex) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: tabbb(),
      )));
}

class tabbb extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(title: Text('WELCOME'),bottom: TabBar(
          isScrollable: true,
          indicatorColor: Colors.red,
          tabs: [
            Tab(
              icon: Icon(Icons.home_filled),
              text: "HOME",
            ),
            Tab(
              icon: Icon(Icons.account_box_outlined),
              text: "ACCOUNT",
            ),
            Tab(
              icon: Icon(Icons.alarm),
              text: "ALARM",
            ),
            Tab(
              icon: Icon(Icons.camera_alt),
              text: "CAMERA",
            ),
            Tab(
              icon: Icon(Icons.backup),
              text: "BACKUP",
            ),
          ],
        ),),
      ),

    );
  }

}