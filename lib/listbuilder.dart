import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listbuild extends StatelessWidget{
  var name=["anu","manu","ram","a","b","c"];
  var image=["2/image1.png","2/image1.png","2/image1.png","2/image1.png","2/image1.png","2/image1.png"];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView.builder(itemBuilder: (context ,index){
        return Card(
          child: ListTile(
            leading: Image(image: AssetImage(image[index]),)
            title: Text(name[index]),
            subtitle: Text(phone[index]),
            trailing: Icon(Icons.call),
          ),
        )

      }),
    );
  }
}