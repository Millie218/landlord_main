import 'package:flutter/material.dart';
import 'package:landlord/register/log_in.dart';
import 'package:landlord/register/sign_up.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Column(
                children: [
                  Center(
                      child: Text(
                    'WELCOME! to LandLord app',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff018de4),
                        fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                      'Landlordy helps you to become an even better landlord.'
                            'Hopefully this is the beginning of a beautiful friends hip.',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff018de4),
                          fontStyle: FontStyle.italic),
                    )),
                  ),

                ],
              ),
              const SizedBox(
                height: 100,
              ),
              const Image(
                  height: 200,
                  width: 200,
                  image: AssetImage('assets/images/doctor.png')),
              const SizedBox(
                height: 150,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
                child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff45b6fe),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 50,
                    width: 250,
                    child: const Center(
                        child: Text(
                      'Sign up',
                      style: TextStyle(color: Colors.white),
                    ))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LogIn()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff45b6fe),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 50,
                  width: 250,
                  child: const Center(
                    child: Text(
                      'Log in',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
