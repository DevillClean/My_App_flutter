
import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/server/gthub_widget.dart';
import 'package:flutter_application_1/ui/constans.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgk,
        title: const Text(
          'Profile Widget',
          style: bodyTextStyle,
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Demo',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'find users in Github',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 20),
            Expanded(child: GithubWidget()),
          ],
        ),
      ),
    );
  }
}
