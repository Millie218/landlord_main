import 'package:flutter/material.dart';
import 'package:landlord/Bottom_nav/bot_nav.dart';
import 'package:landlord/inps/inp.dart';
import 'package:landlord/inps/prop_inp.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey),
                height: 50,
                width: 250,
                child: const Center(
                  child: Text(
                    'Log out',
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Inputs()));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey),
                height: 50,
                width: 250,
                child: const Center(
                  child: Text(
                    'Inputs',
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BotNav()));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey),
                height: 50,
                width: 250,
                child: const Center(
                  child: Text(
                    'Main App',
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
