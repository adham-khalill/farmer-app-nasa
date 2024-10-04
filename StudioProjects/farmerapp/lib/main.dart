import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Screens/green_screen.dart';
import 'Screens/homepage.dart';
import 'Screens/red_screen.dart';
import 'Widgets/navigation_cubit.dart';
import 'screens/notification_screen.dart';
import 'widgets/bottom_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationCubit(),
      child: MaterialApp(
        title: 'Farmer App',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmer App'),
        backgroundColor: Colors.green[700],
        elevation: 0,
      ),
      body: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          switch (state) {
            case NavigationState.notification:
              return NotificationScreen();
            case NavigationState.redScreen:
              return RedScreen();
            case NavigationState.greenScreen:
              return GreenScreen();
            case NavigationState.home:
            default:
              return HomeScreen();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Mimic voice recording functionality and navigate back to home
          context.read<NavigationCubit>().showHome();
          // You can add functionality to start voice recording here
        },
        child: Icon(Icons.mic, color: Colors.black),
        backgroundColor: Colors.grey[300], // Style matching your initial design
        elevation: 5,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
