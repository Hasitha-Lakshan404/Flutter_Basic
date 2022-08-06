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
            //to set the column full size to the user window
            width: double.infinity,
            child: Row(
              //for the center two button
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                //Button 01
                ElevatedButton(
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
                  onPressed: () {
                    setState(() {
                      buttonName = 'Clicked';
                    });
                    print("Print This In Terminal");
                  },
                  child: const Text('Button 02'),
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
