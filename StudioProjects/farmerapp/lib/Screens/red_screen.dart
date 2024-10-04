import 'package:flutter/material.dart';

class RedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Red Screen')),
      body: Center(child: Text('Red Screen', style: TextStyle(fontSize: 24))),
      backgroundColor: Colors.red, // Red background
    );
  }
}
