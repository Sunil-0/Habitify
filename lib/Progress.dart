import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'main.dart';
import 'package:percent_indicator/percent_indicator.dart';

class progress extends StatefulWidget {
  const progress({Key? key}) : super(key: key);

  @override
  _progressState createState() => _progressState();
}

class _progressState extends State<progress> {
  int navIndex = 0;
  String dropdownvalue = 'This Week';
  var items = [
    'This Week',
    'This Month',
    'This Year',
  ];
  String date1 = DateFormat('EEE, d').format(DateTime.now().subtract(Duration(days: DateTime.now().weekday - 1)));
  String date2 = DateFormat('EEE, d').format(DateTime.now().subtract(Duration(days: DateTime.now().weekday - 7)));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          toolbarHeight: 95,
          flexibleSpace: Container(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(date1 + "-" + date2, style: TextStyle(color: Colors.grey),),
                    DropdownButtonHideUnderline(
                      child: DropdownButton(
                        value: dropdownvalue,
                        icon: Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                              value: items,
                              child: Text(items, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),));
                        }
                        ).toList(),
                        onChanged: (String? newvalue){
                          dropdownvalue = newvalue!;
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 180,),
                Icon(Icons.info_outline_rounded, color: Colors.blue, size: 30,)
              ],
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Wellness ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  Icon(Icons.info_outline_rounded, color: Colors.blue,),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  CircularPercentIndicator(
                    radius: 80,
                    animation: true,
                    animationDuration: 5000,
                    lineWidth: 12,
                    percent: 0.7,
                    center: Text('70', style: TextStyle(fontSize: 50, color: Colors.blue),),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.blue,
                  ),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Text('Habit Score', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.blue),),
                      Text('0/100', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                      SizedBox(height: 20,),
                      Text('Mood Score', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.orangeAccent),),
                      Text('0/5', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
              SizedBox(height: 15,),
              Divider(thickness: 2,),
              SizedBox(height: 320,),
              Divider(thickness: 2,),
              SizedBox(height: 10,),
              IntrinsicHeight(
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('COMPLETED', style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                        Row(
                          children: [Icon(Icons.check, color: Colors.grey.shade600,),SizedBox(width: 10,), Text('0', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),) ],
                        )
                      ],
                    ),
                    SizedBox(width: 25,),
                    Container(width: 2, color: Colors.grey,),
                    SizedBox(width: 25,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('SKIPPED', style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                        Row(
                          children: [Icon(Icons.check, color: Colors.grey.shade600,),SizedBox(width: 10,), Text('0', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),) ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
