import 'package:august_project/gridviewextend.dart';
import 'package:august_project/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: tabbareg(),
    debugShowCheckedModeBanner: false,)
  );

}
class tabbareg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(

        appBar: AppBar(title: Text("whatsapp"),
          backgroundColor: Colors.indigo,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Icon(Icons.camera_alt),
            ),

            PopupMenuButton(itemBuilder:(context){
              return[
                PopupMenuItem(child: Text("settings")),
                PopupMenuItem(child: Text("help")),
                PopupMenuItem(child: Text("Invite")),
              ];

            })
          ],
          bottom: TabBar (labelColor: Colors.red
            ,
            tabs:[


              Tab(icon: Icon(Icons.camera),),
              Tab(child: Text("chat",),),
              Tab(child: Text("contact"),),
              Tab(child: Text("status"),),


            ],),
        ),
        body: TabBarView(children: [
          Homepage(),
          GridViewextend(),
          Text("contact"),
          Text("status"),
        ],),
      ),
    );
  }
}