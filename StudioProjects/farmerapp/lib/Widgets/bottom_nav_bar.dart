import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'navigation_cubit.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      final cubit = context.read<NavigationCubit>();
      switch (index) {
        case 0:
          cubit.showHome();
          break;
        case 1:
          cubit.showNotification();
          break;
        case 2:
          cubit.showRedScreen();
          break;
        case 3:
          cubit.showGreenScreen();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      color: Colors.white, // Background color for contrast
      elevation: 5, // Shadow for depth
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home, color: _selectedIndex == 0 ? Colors.green : Colors.black),
            onPressed: () => _onItemTapped(0),
          ),
          IconButton(
            icon: Icon(Icons.notifications, color: _selectedIndex == 1 ? Colors.green : Colors.black),
            onPressed: () => _onItemTapped(1),
          ),
          SizedBox(width: 40), // Space for the mic button
          IconButton(
            icon: Icon(Icons.warning, color: _selectedIndex == 2 ? Colors.green : Colors.black),
            onPressed: () => _onItemTapped(2),
          ),
          IconButton(
            icon: Icon(Icons.settings, color: _selectedIndex == 3 ? Colors.green : Colors.black),
            onPressed: () => _onItemTapped(3),
          ),
        ],
      ),
    );
  }
}
