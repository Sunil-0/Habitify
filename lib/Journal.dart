import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
class Journal extends StatefulWidget {
  const Journal({Key? key}) : super(key: key);

  @override
  _JournalState createState() => _JournalState();
}

class _JournalState extends State<Journal> {
  Color selectedColor = Colors.blue;
  int _counter = 0;
  int navIndex = 0;
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
              Tab( child: tabRow(icon: Icons.all_inbox, text: 'All Habits'),),
              Tab( child: tabRow(icon: Icons.wb_sunny, text: 'Afternoon'),),
              Tab( child: tabRow(icon: Icons.folder, text: 'Morning'),),
              Tab( child: tabRow(icon: Icons.add, text: 'New Area'),),
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
              else if(index == 3){
                Navigator.pushNamed(context, '/New_Area');
                index = 0;
                setState(() {

                });
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

        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          visible: true,
          backgroundColor: Colors.blue,
          overlayColor: Colors.grey,
          children: [
            SpeedDialChild(
              labelWidget: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Text("Today "),
                      Text(TimeOfDay.now().format(context)),
                      SizedBox(width: 15,),
                      Text("change", style: TextStyle(color: Colors.blue),)
                    ],),
                    SizedBox(height: 25,),
                    Row(children: [
                      EmojiRating(textEmoji: ' 😡 ', textFeeling: 'Terrible'),
                      SizedBox(width: 15,),
                      EmojiRating(textEmoji: ' 😞 ', textFeeling: 'Bad'),
                      SizedBox(width: 15,),
                      EmojiRating(textEmoji: ' 😑 ', textFeeling: 'Ok'),
                      SizedBox(width: 15,),
                      EmojiRating(textEmoji: ' 😊 ', textFeeling: 'Good'),
                      SizedBox(width: 15,),
                      EmojiRating(textEmoji: ' 😍 ', textFeeling: 'Excellent'),
                    ],),
                  ],
                ),
              ),
            ),
            buildSpeedDialChild('Create Good Habits', Icons.all_inclusive ),
            buildSpeedDialChild('Break Bad Habits', Icons.auto_fix_off ),
          ],
        )

      ),
    );
  }

  SpeedDialChild buildSpeedDialChild(String text, IconData icon) {
    return SpeedDialChild(
           labelWidget: Container(
             padding: EdgeInsets.all(15),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(5),
               color: Colors.white,
             ),
             child: Row(children: [Text(text + "", style: TextStyle(color: Colors.blue), ), Icon(icon, color: Colors.blue,) ],),
           )
         );
  }
}

class EmojiRating extends StatelessWidget {
  String textEmoji, textFeeling;
  EmojiRating({
    Key? key, required this.textEmoji, required this.textFeeling
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(textEmoji, style: TextStyle(fontSize: 25),),
        SizedBox(height: 15,),
        Text(textFeeling),
      ],
    );
  }
}


class tabRow extends StatelessWidget {
  IconData icon;
  String text;
  tabRow({
    Key? key, required this.icon, required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [Icon(this.icon),SizedBox(width: 10,), Text(this.text)],);
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
      child: Icon(this.icon, color: Colors.blue,),
    );
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
