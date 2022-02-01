import 'dart:ffi';
import 'package:intl/intl.dart';
import 'NewArea.dart';

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
      routes: {
        '/New_Area' : (context) => New_Area(),
        '/MyApp' : (context) => MyHomePage()
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
  Color selectedColor = Colors.blue;
  int _counter = 0;
  int navIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          elevation: 0.5,
          flexibleSpace: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25),
                Text( (DateFormat('yMMM').format(DateTime.now())), style:TextStyle(color: Colors.grey[700])),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text("My Journal", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
                    Icon(Icons.edit),
                    SizedBox(width: 110,),
                    appBarIcon(icon : Icons.school),
                    SizedBox(width: 11,),
                    appBarIcon(icon: Icons.article_outlined)
                  ],
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
          bottom: TabBar(
            padding: EdgeInsets.all(15),
            isScrollable: true,
            unselectedLabelColor: Colors.grey,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: selectedColor,
            ),
            tabs: [
              Tab( child: Row(children: [Icon(Icons.all_inbox),SizedBox(width: 10,), Text('All Habits')],),),
              Tab( child: Row(children: [Icon(Icons.wb_sunny),SizedBox(width: 10,), Text('Afternoon')],),),
              Tab( child: Row(children: [Icon(Icons.folder),SizedBox(width: 10,), Text('Morning')],),),
              Tab( child: Row(children: [Icon(Icons.add),SizedBox(width: 10,), Text('New Area')],),),
            ],
            onTap: (index){
              if(index == 0){
                selectedColor = Colors.blue;
              }
              else if(index==1){
                selectedColor = Colors.orange;
              }
              else if(index==2){
                selectedColor = Colors.orangeAccent;
              }
              else{
                Navigator.pushNamed(context, '/New_Area');
              }
              setState(() {

              });
          },
          ),
        ),

        body: TabBarView(
            children : [
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.grey.shade300,
                      child: Row(
                        children: [
                          Icon(Icons.info, color: Colors.grey),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('When the day as passed and the log value is zero or below the', style: TextStyle(fontSize: 10.5, color: Colors.grey),),
                              Text('limit, a bad habit will automatically be marked a success.', style: TextStyle(fontSize: 10.5, color: Colors.grey),),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Icon(Icons.cancel_outlined, color: Colors.grey),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Text('1 Success', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          SizedBox(width: 20,),
                          Icon(Icons.arrow_upward),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.grey.shade300,
                      child: Row(
                        children: [
                          Icon(Icons.offline_bolt_outlined, size: 50, color: Colors.grey,),
                          SizedBox(width: 25,),
                          Column( crossAxisAlignment:  CrossAxisAlignment.start,
                            children: [
                              Text("Stop Staying Up Late", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
                              SizedBox(height: 10,),
                              Text("0/1 times",style: TextStyle(color: Colors.grey),)],
                          ),
                          SizedBox(width: 70,),
                          Icon(Icons.check, color: Colors.grey)

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.grey.shade300,
                      child: Row(
                        children: [
                          Icon(Icons.info, color: Colors.grey),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('When the day as passed and the log value is zero or below the', style: TextStyle(fontSize: 10.5, color: Colors.grey),),
                              Text('limit, a bad habit will automatically be marked a success.', style: TextStyle(fontSize: 10.5, color: Colors.grey),),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Icon(Icons.cancel_outlined, color: Colors.grey),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Text('1 Success', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          SizedBox(width: 20,),
                          Icon(Icons.arrow_upward),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Icon(Icons.offline_bolt_outlined, size: 50, color: Colors.grey,),
                          SizedBox(width: 15,),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.grey))
                            ),
                            child: Row(
                              children: [
                                Column( crossAxisAlignment:  CrossAxisAlignment.start,
                                  children: [
                                    Text("Stop Staying Up Late", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),),
                                    SizedBox(height: 10,),
                                    Text("0/1 times",style: TextStyle(color: Colors.grey),)],
                                ),
                                SizedBox(width: 20,),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Row(children: [Icon(Icons.check, color: Colors.blue, size: 18,),SizedBox(width: 10,), Text('Succeed', style: TextStyle(color: Colors.blue),),],),
                                ),
                              ],
                            ),
                          )

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 80,),
                    Icon(Icons.all_inbox, size: 50,),
                    SizedBox(height: 10,),
                    Text('NoHabits Here', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    SizedBox(height: 10,),
                    Text('Habits are like dominos. As One is formed, All other will'),
                    Text('follow!'),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                      ),
                      child: Column(

                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [habits(text: 'Habit1',), SizedBox(width: 15,), habits(text: 'Habit1',), SizedBox(width: 15,), habits(text: 'Habit1',)],),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [habits(text: 'Habit1',), SizedBox(width: 15,), habits(text: 'Habit1',)],),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [habits(text: 'Habit1',)],)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(),
            ]),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: navIndex,
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
          onTap: (int itemIndex){
            setState(() {
              navIndex = itemIndex;
            });
          },
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

class appBarIcon extends StatelessWidget {
  IconData icon;
  appBarIcon({
    Key? key, required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.blue.shade50
        ),
        child: Icon(this.icon, color: Colors.blue,));
  }
}

class habits extends StatelessWidget {
  String text;
  habits({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white
      ),
      child: Row(children: [Icon(Icons.book), SizedBox(width: 10), Text(this.text)],),
    );
  }
}
