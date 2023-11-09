import 'package:august_project/loginpage.dart';
import 'package:august_project/tab2.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext contex)=>MaterialApp(home: bottomnav(),)));
}


class bottomnav extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  @override
  State<bottomnav>createState() => _bottomnavState();

}
class _bottomnavState extends State<bottomnav> {
  var screen=[
    Loginpage(),
    tabbareg(),
    Loginpage(),
    Loginpage(),
  ];
  int index=2;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar:(BottomNavigationBar()),
   );
  }

}