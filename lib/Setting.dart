import 'package:flutter/material.dart';
class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: Text('Profile', style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Container(

          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ACCOUNT', style: TextStyle(color: Colors.blue),),SizedBox(height: 15,),
              settingList(icon: Icons.account_circle_sharp, color: Colors.grey, value: 'Account'),Divider(thickness: 2, indent: 45,),SizedBox(height: 10,),
              Text('DATA', style: TextStyle(color: Colors.blue),),SizedBox(height: 15,),
              settingList(icon: Icons.all_inbox, color: Colors.blue, value: 'Manage Habits'),Divider(thickness: 2, indent: 45,),
              settingList(icon: Icons.folder, color: Colors.black, value: 'Manage Area'),Divider(thickness: 2, indent: 45,),
              settingList(icon: Icons.archive_rounded, color: Colors.orangeAccent, value: 'App Usage'),Divider(thickness: 2, indent: 45,),
              settingList(icon: Icons.add_to_home_screen, color: Colors.purple, value: 'Export Data'),Divider(thickness: 2, indent: 45,),SizedBox(height: 10,),
              Text('APP BEHAVIOR', style: TextStyle(color: Colors.blue),),SizedBox(height: 15,),
              settingList(icon: Icons.lock, color: Colors.black, value: 'Privacy Lock'),Divider(thickness: 2, indent: 45,),
              settingList(icon: Icons.calendar_today_sharp, color: Colors.blue, value: 'First Day of the Week'),Divider(thickness: 2, indent: 45,),
              settingList(icon: Icons.notifications, color: Colors.grey, value: 'Notifications'),Divider(thickness: 2, indent: 45,),
              settingList(icon: Icons.wb_sunny, color: Colors.orangeAccent, value: 'Time of Day'),Divider(thickness: 2, indent: 45,),
              settingList(icon: Icons.volume_up, color: Colors.green, value: 'In App Sound'),Divider(thickness: 2, indent: 45,),
              settingList(icon: Icons.wb_incandescent_sharp, color: Colors.black, value: 'Dark Mode'),Divider(thickness: 2, indent: 45,),SizedBox(height: 10,),
              Text('PAYMENT', style: TextStyle(color: Colors.blue),),SizedBox(height: 15,),
              settingList(icon: Icons.folder_shared_outlined, color: Colors.blue, value: 'Upgrade to Prime'),Divider(thickness: 2, indent: 45,),SizedBox(height: 10,),
              Text('INTEGRATION', style: TextStyle(color: Colors.blue),),SizedBox(height: 15,),
              settingList(icon: Icons.calendar_today, color: Colors.lightBlue, value: 'Sync with Calender'),Divider(thickness: 2, indent: 45,),
              settingList(icon: Icons.sd_storage_sharp, color: Colors.purple, value: 'API Credential'),Divider(thickness: 2, indent: 45,),SizedBox(height: 10,),
              Text('SUPPORT AND LEGAL', style: TextStyle(color: Colors.blue),),SizedBox(height: 15,),
              settingList(icon: Icons.golf_course, color: Colors.lightBlue, value: 'Vote on Features'),Divider(thickness: 2, indent: 45,),
              settingList(icon: Icons.chat_bubble_outlined, color: Colors.purple, value: 'Chat with Our Support Team'),Divider(thickness: 2, indent: 45,),
              settingList(icon: Icons.file_copy, color: Colors.black, value: 'Privacy Policy'),Divider(thickness: 2, indent: 45,),
              settingList(icon: Icons.app_registration, color: Colors.orangeAccent, value: 'Terms of Use'),Divider(thickness: 2, indent: 45,),SizedBox(height: 10,),
              Text('CONNECT', style: TextStyle(color: Colors.blue),),SizedBox(height: 15,),
              settingList(icon: Icons.translate, color: Color(0xFF0E199E), value: 'Translate'),Divider(thickness: 2, indent: 45,),
              settingList(icon: Icons.supervised_user_circle_outlined, color: Colors.orangeAccent, value: 'User Community'),Divider(thickness: 2, indent: 45,),
              settingList(icon: Icons.notifications, color: Colors.lightBlue, value: 'Follow us on Twitter'),Divider(thickness: 2, indent: 45,),SizedBox(height: 10,),

            ],
          ),
        ),
      ),
    );
  }
}

class settingList extends StatelessWidget {
  IconData icon;
  Color color;
  String value;
  settingList({
    Key? key, required this.icon, required this.color, required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: this.color
              ),
              child: Icon(this.icon, color: Colors.white, size: 25,),
            ),
            SizedBox(width: 10,),
            Text(this.value, style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        Icon(Icons.arrow_right),
      ],
    );
  }
}
