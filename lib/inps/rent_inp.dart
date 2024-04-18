import 'package:flutter/material.dart';

class RentInput extends StatefulWidget {
  const RentInput({super.key});

  @override
  State<RentInput> createState() => _RentInputState();
}

class _RentInputState extends State<RentInput> {
  final TextEditingController _controller = TextEditingController();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                    children: [
                      const Text('Rent is paid'),
                      SizedBox(
                        width: 30,
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        buttonPadding: const EdgeInsets.symmetric(vertical: 10),
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text("Monthly"),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text("Weekly"),
                          ),

                        ],
                      )

                    ]
                ),
              ),
              Container(
                width: 250,
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Enter rent amount',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.home),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text('Leave empty if you are not charging rent.')
            ],
          ),
        ),
      ),
    );
  }
}
