import 'package:flutter/material.dart';
class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Under Development", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
    );
  }
}
