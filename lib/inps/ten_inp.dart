import 'package:flutter/material.dart';

class TenantNameInput extends StatefulWidget {
  const TenantNameInput({super.key});

  @override
  State<TenantNameInput> createState() => _TenantNameInputState();
}

class _TenantNameInputState extends State<TenantNameInput> {
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('Step 2 of 4 -Tenant'),
               SizedBox(height: 20,),
                Container(
                  width: 250,
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Enter Tenant name',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.home),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Leave empty if the property is vacant')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
