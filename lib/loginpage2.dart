import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.da

void main() {
  runApp(DevicePreview(
      builder: (BuildContext contex) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Loginpage(),
      )));
}

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1148091793/photo/technology-abstract.webp?b=1&s=170667a&w=0&k=20&c=DT-gZtTyAcf1aV_DPo0HHRSuvVy4YQyShcS7dkJaeyQ="),fit: BoxFit.fill)
          // gradient: LinearGradient(
          //     begin: Alignment.topCenter,
          //     end: Alignment.centerLeft,
          //     colors: [
          //   Colors.red,
          //   Colors.green,
          //   Colors.yellow,
          // ])
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image(
                image: AssetImage(
                  "2/image1.png",
                ),
                height: 100,
                width: 100,
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
                child: TextField(
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass) {
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      hintText: "password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
                child: TextField(), //TextField
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "create a new user",
                    style: GoogleFonts.allura(
                        fontSize: 40,
                        color: Colors.yellow,
                        fontWeight: FontWeight.w400,
                        textStyle: Theme.of(context).textTheme.titleMedium),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
