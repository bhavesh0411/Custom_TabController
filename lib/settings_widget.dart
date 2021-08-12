import 'package:flutter/material.dart';

class OpenSetting extends StatelessWidget {

  @override
  Widget build(BuildContext settingcontext) {
    return Scaffold(
      body: ListView(
        children: <Widget>[

          ListTile(
              title: Text('Account'),
              leading: Icon(Icons.account_circle_outlined, 
              // color: Colors.black54,
              ),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Text('Notification'),
              leading: Icon(Icons.circle_notifications_sharp, 
              // color: Colors.black54,
              ),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Text('Appearance'),
              leading: Icon(Icons.opacity_rounded,
              // color: Colors.black54, 
              ),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Text('Privacy & Security'),
              leading: Icon(Icons.lock_rounded,
              // color: Colors.black54, 
              ),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Text('Help & Support'),
              leading: Icon(Icons.headphones_rounded,
              // color: Colors.black54, 
              ),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(Icons.help_outline, 
              // color: Colors.black54,
              ),
              trailing: Icon(Icons.navigate_next),
            ),
        ],
      ),
    );
  }
}

