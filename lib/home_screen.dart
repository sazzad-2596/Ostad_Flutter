import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_project_all/setting_screen.dart';

import 'order_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nabigation"),
        toolbarHeight: 100,
        backgroundColor: Colors.teal,
        elevation: 20,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home_Screen',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
                child: Text('Go to settings')),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => OrderScreen()),
              );
            },
                child: Text('Go to OrderScreen')),
          ],
        ),
      ),

    );
  }
}