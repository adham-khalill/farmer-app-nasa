import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notifications')),
      body: Center(child: Text('Notification Screen', style: TextStyle(fontSize: 24))),
      backgroundColor: Colors.red[100], // Light red background
    );
  }
}
