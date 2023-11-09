import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>
          MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: Drawereg(),
          )));
}

class Drawereg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer"),backgroundColor: Colors.indigo[900],),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1341408852/video/colored-smoke-on-a-dark-background-blue-and-red-light-with-smoke.jpg?s=640x640&k=20&c=v2DQUY8IVbli_6FH_9KAs6YWRXlDdYiBJHfp7JFh7NY="),fit: BoxFit.fill)),
              accountName: Text("Gayathri",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
              accountEmail: ListView(children:[
                Text("gayathrinv@gmail.com",style: TextStyle(color: Colors.white54),),
                Row(children: [
                  Text("16,234 followers",style: TextStyle(color: Colors.white54),),
                  Text("12,345 following",style: TextStyle(color: Colors.white54),),
                ],)
              ],),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("2/image1.png"),),
              otherAccountsPictures: [
                CircleAvatar(backgroundImage: AssetImage("images/MHR09762.JPG"),)
              ],
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("HOME"),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("MESSAGE"),
            ),
            ListTile(
              leading: Icon(Icons.sync),
              title: Text("SYNC"),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("TRASH"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("SETTINGS"),
            ),
            Divider(thickness: 1,color: Colors.grey,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(child: Text("Profile",style: TextStyle(color: Colors.grey),),),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("LOGOUT"),
            ),
            Divider(thickness: 1,color: Colors.grey,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(child: Text("Communicate",style: TextStyle(color: Colors.grey),),),
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("SHARE"),
            ),
            ListTile(
              leading: Icon(Icons.rate_review),
              title: Text("RATE US"),
            ),

          ],
        ),)
      ,
    );
  }

}