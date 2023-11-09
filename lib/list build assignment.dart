import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=> MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home:Listbuilder(),
  )));
}

class Listbuilder extends StatelessWidget{
  var name=["F","A","I","H","A","A","A","H","F"];
  var title=["facebook","AIG NETWORK","I 10","H 1000","AA 1500","AAA 3500","M 8500","F 85410"];
  var amount=["\$100","\$200","\$300","\$600","\$800","\$450","\$877","\$999","\$555"];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("LIST VIEW BUILDER"),),
     body: ListView.builder(itemBuilder: (context,index){
       return Card(
         child:ListTile(
           leading: CircleAvatar(child: Text(name[index]),),
           title:Text(title[index]),
           trailing:Text(amount[index]),
         ),
       );
     },itemCount: title.length,
     ),
   );
  }

}