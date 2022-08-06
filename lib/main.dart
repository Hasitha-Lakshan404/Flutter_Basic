import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = "Click";
  String button02Name = "Hold On";
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // Title
          title: const Text('CodMart'),
        ),

        //Sart a body
        body: Center(
          child: SizedBox(
            //to set the column/row width full size to the user window
            width: double.infinity,
            //set the column/row width full size to the user window
            height: double.infinity,
            child: Column(
              //for the center two button
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                //Button 01
                ElevatedButton(
                  //for Style The Button
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 255, 255, 10),
                      onPrimary: Colors.black),

                  onPressed: () {
                    setState(() {
                      buttonName = 'Clicked';
                    });
                    print("Print This In Terminal");
                  },

                  child: Text(buttonName),
                ),

                //Button 02
                ElevatedButton(
                  //Style Button 02
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black87,
                  ),
                  onPressed: () {
                    setState(() {
                      button02Name = "Exit";
                    });
                    print("Print This In Terminal");
                  },
                  child: Text(button02Name),
                ),
              ],
            ),
          ),
        ),

        //navigation bar
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            //Item01(Home)
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),

            //Item02(Settings)
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            ),
          ],

          currentIndex: currentIndex, //to inform which one we stay..in nav bar
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
