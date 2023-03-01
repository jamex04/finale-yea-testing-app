import 'package:flutter/material.dart';


// ignore: use_key_in_widget_constructors
class FirstPage extends StatelessWidget {
  final inputController = TextEditingController();

  final outputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Input Output Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: inputController,
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 16.0),
            TextField(
              controller: outputController,
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                outputController.text = inputController.text;
              },
              // ignore: prefer_const_constructors
              child: Text('search'),
            ),
          ],
        ),
      ),
    );
  }
}
