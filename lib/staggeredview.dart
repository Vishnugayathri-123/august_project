import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(
        useInheritedMediaQuery:true,
        debugShowCheckedModeBanner:false,
        home: gridView(),)),);

}
class gridView extends StatelessWidget{
  var icons=[Icons.home,Icons.email,Icons.alarm,Icons.wallet,Icons.backup,Icons.book,Icons.camera,Icons.person,Icons.print,Icons.phone,Icons.notes,Icons.music_note];
  var name=["Home","Email","Alarm","Wallet","Backup","Book","Camera","Person","Print","Phone","Notes","Music"];
  var colors=[Colors.lime,Colors.white,Colors.yellow,Colors.blueGrey,Colors.blue,Colors.deepOrangeAccent,Colors.pinkAccent ,Colors.purple ,Colors.greenAccent ,Colors.brown ,Colors.yellowAccent ,Colors.blueGrey];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      GridView.count(crossAxisCount: 3,
        children: List.generate(12, (index)
        {
          return Card(color: colors[index],
            child: Column(
              children: [
                SizedBox(height: 30,),
                Text(name[index]),
                SizedBox(height: 20,),
                Icon(icons[index]),
              ],
            ),
          );
        }
        ),),
    );
  }
}



