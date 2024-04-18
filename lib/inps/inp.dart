import 'package:flutter/material.dart';
import 'package:landlord/inps/prop_inp.dart';
import 'package:landlord/inps/rent_inp.dart';
import 'package:landlord/inps/ten_inp.dart';

class Inputs extends StatefulWidget {
  const Inputs({super.key});

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  int _selectedScreenIndex = 0;

  final List<Map<String, dynamic>> _screens = [
    {'screen': const PropertyNameInput(), 'title': 'Screen A Title'},
    {'screen': const TenantNameInput(), 'title': 'Screen B Title'},
    {'screen': const RentInput(), 'title': 'Screen B Title'},

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
        // appBar: AppBar(
        //   title: Text(_screens[_selectedScreenIndex]['title']),
        // ),
        body: _screens[_selectedScreenIndex]['screen'],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedScreenIndex,
          onTap: _selectScreen,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Screen A',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Screen B',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Screen B',
            ),
          ],
        ),      ),
    );
  }
}
