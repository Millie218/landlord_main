import 'package:flutter/material.dart';
import 'package:landlord/Bottom_nav/help.dart';
import 'package:landlord/Bottom_nav/properties.dart';
import 'package:landlord/Bottom_nav/reminders.dart';
import 'package:landlord/Bottom_nav/reports.dart';
import 'package:landlord/Bottom_nav/settings.dart';

class BotNav extends StatefulWidget {
  const BotNav({super.key});

  @override
  State<BotNav> createState() => _BotNavState();
}

class _BotNavState extends State<BotNav> {
  int _selectedScreenIndex = 0;

  final List<Map<String, dynamic>> _screens = [
    {'screen': const Properties(), 'title': 'All properties'},
    {'screen': const Reminders(), 'title': 'Reminders Title'},
    {'screen': const Reports(), 'title': 'Reports Title'},
    {'screen': const Settings(), 'title': 'Settings Title'},
    {'screen': const Help(), 'title': 'Help Title'},
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_screens[_selectedScreenIndex]['title']),
        ),
        body: _screens[_selectedScreenIndex]['screen'],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedScreenIndex,
          onTap: _selectScreen,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.key_sharp),
              label: 'Properties',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
              label: 'Reminders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Reports',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help_outline_rounded),
              label: 'Help',
            ),
          ],
        ),
      ),
    );
  }
}
