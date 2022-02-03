import 'dart:ffi';
import 'package:habitify/Journal.dart';
import 'package:intl/intl.dart';
import 'NewArea.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Progress.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/New_Area' : (context) => New_Area(),
        '/Progress' : (context) => progress(),
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, }) : super(key: key);

   String? title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<Widget> pages = [
    const Journal(),
    const progress(),
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_counter],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _counter,
        items: [
          BottomNavigationBarItem(
            label: "Journal",
            icon: Icon(Icons.view_day_outlined),
          ),
          BottomNavigationBarItem(
            label: "Progress",
            icon: Icon(Icons.access_time),
          ),
          BottomNavigationBarItem(
            label: "Challenges",
            icon: Icon(Icons.animation),
          ),
          BottomNavigationBarItem(
            label: "Upgrade",
            icon: Icon(Icons.alt_route),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(Icons.settings),
          ),
        ],
        onTap: (Index){
          _counter = Index;
          setState(() {
          });
        },
      ),
    );
  }
}

