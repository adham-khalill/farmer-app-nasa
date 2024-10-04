import 'package:flutter/material.dart';

class GreenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Green Screen')),
      body: Center(child: Text('Green Screen', style: TextStyle(fontSize: 24))),
      backgroundColor: Colors.green, // Green background
    );
  }
}
