import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:landlord/welcome_page.dart';
import 'register/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyTranslator());
}
class MyTranslator extends StatefulWidget {
  const MyTranslator({super.key});

  @override
  State<MyTranslator> createState() => _MyTranslatorState();
}

class _MyTranslatorState extends State<MyTranslator> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomePage(),
    );
  }
}