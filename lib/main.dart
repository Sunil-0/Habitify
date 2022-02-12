import 'dart:ffi';
import 'package:habitify/AddHabit.dart';
import 'package:habitify/Challenges.dart';
import 'package:habitify/Journal.dart';
import 'package:habitify/Setting.dart';
import 'package:habitify/Upgrade.dart';
import 'package:intl/intl.dart';
import 'package:firebase_core/firebase_core.dart';
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
        '/Add_Habit' : (context) => addHabit(),
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
    const challenges(),
    const upgrade(),
    const setting()
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
          buildBottomNavigationBarItem('Journal', Icon(Icons.view_day_outlined)),
          buildBottomNavigationBarItem('Progress', Icon(Icons.access_time)),
          buildBottomNavigationBarItem('Challenges', Icon(Icons.animation)),
          buildBottomNavigationBarItem('Upgrade', Icon(Icons.alt_route)),
          buildBottomNavigationBarItem('Settings', Icon(Icons.settings)),
        ],
        onTap: (Index){
          _counter = Index;
          setState(() {
          });
        },
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(String text, Icon icon) {
    return BottomNavigationBarItem(
          label: text,
          icon: icon,
        );
  }
}

