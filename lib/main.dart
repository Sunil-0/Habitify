import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          elevation: 0.5,
          flexibleSpace: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25),
                Text("TODAY", style:TextStyle(color: Colors.grey[700])),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text("My Journal", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
                    Icon(Icons.add),
                    SizedBox(width: 140,),
                    Icon(Icons.architecture_rounded, color: Colors.indigoAccent.shade200,),
                    SizedBox(width: 5,),
                    Icon(Icons.article, color: Colors.indigoAccent.shade200,),
                  ],
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
          bottom: TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.grey,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.blue,
            ),
            tabs: [
              Tab( child: Row(children: [Icon(Icons.ac_unit),SizedBox(width: 10,), Text('Hello')],)),
              Tab( child: Row(children: [Icon(Icons.ac_unit),SizedBox(width: 10,), Text('Hello')],)),
              Tab( child: Row(children: [Icon(Icons.ac_unit),SizedBox(width: 10,), Text('Hello')],)),
              Tab( child: Row(children: [Icon(Icons.ac_unit),SizedBox(width: 10,), Text('Hello')],)),
            ],
          ),
        ),
        body: Container(
          child: Row(
            children: [

            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
