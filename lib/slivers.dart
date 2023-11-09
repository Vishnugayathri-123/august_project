import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext contex) =>
          MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: Sliversss(),
          )));
}
class Sliversss extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:CustomScrollView(
       slivers: [
         SliverAppBar(
           floating: true,
           pinned: true,
           expandedHeight: 150,
           title: Text("Conversations",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
           actions: [
            TextButton(onPressed: (){}, child: Text("+ Add new",style: TextStyle(color:Colors.red),),
   ),
          ], bottom: AppBar(backgroundColor: Colors.white,
             elevation: 0,
             title: Container(decoration:BoxDecoration(color: Colors.white),
               child: TextField(decoration:InputDecoration(hintText: "search..."),),

               ),
             ),
           ),
          SliverList(delegate: SliverChildListDelegate([
            ListTile(leading: Icon(Icons.person),
              title: Text("kannan"),
              subtitle: Text("ok"),
              trailing: Text("Today"),),
            ListTile(leading:Image(image: AssetImage("2/image1.png"),),
                title: Text("anu"),
                subtitle: Text("see you soon"),
                trailing: Text("oct 17"),),
                ListTile(leading:Image(image: AssetImage("2/image1.png"),),
                 title: Text("ammu"),
                    subtitle: Text("good mrng"),
                    trailing: Text("last week"),),
    ListTile(leading:Image(image: AssetImage("2/image1.png"),),
      title: Text("anu"),
      subtitle: Text("good evng"),
      trailing: Text("last month"),),


          ])
         ),
       ],
     ),
   );
  }

}

