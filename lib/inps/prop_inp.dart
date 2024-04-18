import 'package:flutter/material.dart';

class PropertyNameInput extends StatefulWidget {
  const PropertyNameInput({super.key});

  @override
  State<PropertyNameInput> createState() => _PropertyNameInputState();
}

class _PropertyNameInputState extends State<PropertyNameInput> {
  final TextEditingController _propcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(children: [
                  const Text('Rent'),
                  const SizedBox(
                    width: 30,
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    buttonPadding: const EdgeInsets.symmetric(vertical: 10),
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Yes"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("No"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("No"),
                      ),
                    ],
                  )
                ]),
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  controller: _propcontroller,
                  decoration: const InputDecoration(
                    hintText: 'Enter property name or address',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.home),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text('Property name or short address is required'),
            ],
          ),
        ),
      ),
    );
  }
}
