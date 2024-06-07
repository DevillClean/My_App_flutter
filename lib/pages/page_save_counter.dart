import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/ui/login.dart';
import 'package:flutter_application_1/ui/constans.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaveWidget extends StatefulWidget {
  const SaveWidget({super.key});

  @override
  State<SaveWidget> createState() => _SaveWidgetState();
}

class _SaveWidgetState extends State<SaveWidget> {
  static const counterKey = 'counter';
  int _counter = 0;

  @override
  void initState() {
    _initCounter();
    super.initState();
  }

  void _incrementCounter() async {
    setState(() {
      _counter++;
    });
    await _setCounter();
  }

  Future _initCounter() async {
    _counter = await _getCounter();
  }

  Future _setCounter() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(counterKey, _counter);
  }

  Future<int> _getCounter() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(counterKey) ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgk,
        title: const Text(
          'Demo save counter',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text('$_counter',
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold)),
              const Text('You have pushed the button this many times'),
              const SizedBox(height: 20),
              FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(CupertinoIcons.add),
              ),
              const Expanded(
                child: EditTextLogin(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
