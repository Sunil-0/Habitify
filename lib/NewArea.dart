import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter_switch/flutter_switch.dart';
class New_Area extends StatefulWidget {
  const New_Area({Key? key}) : super(key: key);

  @override
  _New_AreaState createState() => _New_AreaState();
}

class _New_AreaState extends State<New_Area> {
  bool Value = true;
  void _incrementCounter() {
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('New Area', style: TextStyle(color: Colors.black),),
        actions: [IconButton(onPressed: (){}, icon: Text('Save', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),))],
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.cancel, color: Colors.black,),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: Row(
                children: [
                  appBarIcon(icon: Icons.folder), SizedBox(width: 10,), Text('Area Name', style: TextStyle(color: Colors.grey, fontSize: 18),)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 20, 10, 20),
              child: Row(children: [Text('COLOR', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,fontSize: 18),),],)
            ),
            Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: Row(
                children: [
                  Text('Color Enabled', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                  SizedBox(width: 215,),
                  FlutterSwitch(
                    width: 50,
                      height: 25,
                      value: Value,
                      onToggle: (val){
                        setState(() {
                          Value = val;
                        });
                      }
                      ),
                ],
              ),
            ),
            SizedBox(height: 2,),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  colorEnabled(colr: Colors.grey),
                  colorEnabled(colr: Colors.red),
                  colorEnabled(colr: Colors.orangeAccent),
                  colorEnabled(colr: Colors.blue),
                  colorEnabled(colr: Colors.black26),
                  colorEnabled(colr: Colors.deepPurple),
                  colorEnabled(colr: Colors.green),
                ],
              ),
            ),
            SizedBox(height: 2,),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(children: [Text('UNGROUPED HABITS',style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,fontSize: 16),)],),
            ),
            Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: Row(children: [Text('Stop Staying Up Late', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)],),
            ),

          ],
        ),
      ),
    );
  }
}

class colorEnabled extends StatelessWidget {
  Color colr;
  colorEnabled({
    Key? key, required this.colr
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(),
        color: this.colr,
      ),
    );
  }
}
