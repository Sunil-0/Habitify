import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habitify/classModel.dart';
import 'package:flutter_pickers/pickers.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:duration_picker/duration_picker.dart';


class addHabit extends StatefulWidget {
  const addHabit({Key? key}) : super(key: key);

  @override
  _addHabitState createState() => _addHabitState();
}

class _addHabitState extends State<addHabit> {
  bool value = false;
  bool isSelect = false;
  String pickedtime = 'Time';
  String duration = 'Select Duration';
  var selectTime = 'Select Time';
  Duration pickedDuration = Duration(minutes: 00);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: Icon(Icons.cancel, color: Colors.grey,),
          onTap: (){
            Navigator.pop(context);
          },
        ),
        actions: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(9),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blue
            ),
            child: GestureDetector(
              child: Text('Save', style: TextStyle(fontSize: 15), ),
              onTap: (){},
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [Icon(Icons.accessibility), SizedBox(width: 15,), Text(AddHabit.habitName)],
              ),
            ),
            Divider(thickness: 1,),
            InkWell(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [Icon(Icons.all_inclusive), SizedBox(width: 15,), Text('Repeat everyday')],
                ),
              ),
              onTap: (){
                buildShowModalBottomSheet(context);
              },
            ),
            Divider(thickness: 1,),
            InkWell(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Icon(Icons.my_location),
                    SizedBox(width: 15,),
                    Text(duration),
                  ],
                ),
              ),
              onTap: () async {
                final Duration? durationPicked = await showDurationPicker(
                  context: context,
                  initialTime: pickedDuration,
                );
                if(duration != null){
                  setState(() {
                    duration = (duration == null ? 'Select Duration' : durationPicked?.inMinutes.toString())! + ' ' + 'minutes';
                  });
                }
              },
            ),
            Divider(thickness: 1,),
            InkWell(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [Icon(Icons.accessibility), SizedBox(width: 15,), Text(pickedtime)],
                ),
              ),
              onTap: () async {
                final TimeOfDay? timePicker = (await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                ));
                if(timePicker != null){
                  setState(() {
                    pickedtime = pickedtime == null ? 'Time' : timePicker.format(context);
                  });
                }
              },
            ),
            Divider(thickness: 1,),
          ],
        ),
      ),
    );
  }

  Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context){
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState){
                return DefaultTabController(
                    length: 2,
                    child: Scaffold(
                      appBar: AppBar(
                        backgroundColor: Colors.white,
                        leading: SizedBox(),
                        title: Center(
                          child: Text('Repeat', style: TextStyle(color: Colors.black,),),
                        ),
                        actions: [
                          TextButton(
                            onPressed: (){},
                            child: Text('Done', style: TextStyle(color: Colors.blue),),
                          ),
                        ],
                        bottom: TabBar(
                          tabs: [
                            TabText(text: 'Daily'), TabText(text: 'Monthly'),
                          ],

                        ),
                      ),
                      body: TabBarView(
                        children: [
                          Column(
                            children: [
                              DailyRow('Sunday'),
                              Divider(thickness: 1, height: 5,),
                              DailyRow('Monday'),
                              Divider(thickness: 1, height: 5),
                              DailyRow('Tuesday'),
                              Divider(thickness: 1, height: 5,),
                              DailyRow('Wednesday'),
                              Divider(thickness: 1, height: 5),
                              DailyRow('Thursday'),
                              Divider(thickness: 1, height: 5),
                              DailyRow('Friday'),
                              Divider(thickness: 1, height: 5),
                              DailyRow('Saturday'),
                            ],
                          ),
                          Container(
                            height: 200,
                            color: Colors.grey.shade100,
                            child: GridView.count(
                                  crossAxisCount: 6,
                                  crossAxisSpacing: 1,
                                  mainAxisSpacing: 1,
                                  children: [
                                    FullMonth(1),
                                    FullMonth(2),
                                    FullMonth(3),
                                    FullMonth(4),
                                    FullMonth(5),
                                    FullMonth(6),
                                    FullMonth(7),
                                    FullMonth(8),
                                    FullMonth(9),
                                    FullMonth(10),
                                    FullMonth(11),
                                    FullMonth(12),
                                    FullMonth(13),
                                    FullMonth(14),
                                    FullMonth(15),
                                    FullMonth(16),
                                    FullMonth(17),
                                    FullMonth(18),
                                    FullMonth(19),
                                    FullMonth(20),
                                    FullMonth(21),
                                    FullMonth(22),
                                    FullMonth(23),
                                    FullMonth(24),
                                    FullMonth(25),
                                    FullMonth(26),
                                    FullMonth(27),
                                    FullMonth(28),
                                    FullMonth(29),
                                    FullMonth(30),
                                    FullMonth(31),
                                  ],
                                ),
                            ),
                        ],
                      ),
                    )
                );
              }
          );
        }
    );
  }
}

DailyRow(String Day) {
  bool value = false;
  return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return InkWell(
          child: Row(
            children: [
              Checkbox(
                value: value,
                onChanged: (bool? Value) {
                  setState(() {
                  value = Value!;
                    }
                   );
                  },
                ), //Checkbox
                SizedBox(width: 15,),
                Text(Day),
              ],
            ),
          onTap: (){
            setState(() {
              value = value == false ? true : false;
            });
          },
        );
      }
  );
}

class TabText extends StatelessWidget {
  String text;
  TabText({
    Key? key, required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Text(text, style: TextStyle(color: Colors.black, fontSize: 25),),
      ),
    );
  }
}

FullMonth(int num) {
  Color dateBG = Colors.white;
  return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Ink(
          child: InkWell(
            child: Container(
              width: 350,
              height: 350,
              color: dateBG ,
              child: Center(child: Text(num.toString())),
            ),
            onTap: (){
              dateBG = dateBG == Colors.white ? Colors.blue : Colors.white;
              setState(() {
              });
            },
          ),
        );
      }
  );
}

/*
Icon(Icons.my_location),
                    SizedBox(width: 15,),
                    Text(selectTime),
                    DurationPicker(
                      duration: pickedDuration,
                      onChange: (val){
                        pickedDuration = val;
                        setState(() {
                          selectTime = val.toString();
                        });
                      },
                    ),
 */