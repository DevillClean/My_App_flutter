import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/ui/login.dart';
import 'package:flutter_application_1/ui/constans.dart';

class ReadResultEmail extends StatefulWidget {
  const ReadResultEmail({super.key});

  @override
  State<ReadResultEmail> createState() => _ReadResultEmailState();
}

class _ReadResultEmailState extends State<ReadResultEmail> {
  initSplash() async {
    SharedPrefService sharedPrefService = SharedPrefService();
    String? value = await sharedPrefService.readCashe(key: 'email');
  }

  @override
  void initState() {
    initSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SharedPrefService sharedPrefService = SharedPrefService();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgk,
        title: const Text(
          'Result',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  sharedPrefService.readCashe(key: 'email');
                  // Navigator.pop(context);
                },
                child: const Text("Go back"),
              ),
              ElevatedButton(
                onPressed: () async {
                  bool isRemoved =
                      await sharedPrefService.removeCashe(key: 'email');
                  if (isRemoved) {
                    Navigator.pop(context);
                  } else {}
                },
                child: const Text("Remove cache"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
