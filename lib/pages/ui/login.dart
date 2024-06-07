import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/ui/splesh_viev.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditTextLogin extends StatefulWidget {
  const EditTextLogin({super.key});

  @override
  State<EditTextLogin> createState() => _EditTextLoginState();
}

class SharedPrefService {
  Future writeCashe({required String key, required String value}) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    bool isSaved = await pref.setString('email', value);

    debugPrint(isSaved.toString());
  }

  Future<String?> readCashe({required String key}) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String? value = pref.getString(key);

    if (value != null) {
      debugPrint(value.toString());
      value;
    }
    return null;
  }

  Future<bool> removeCashe({required String key}) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    bool? isCleared = await pref.clear();

    return isCleared;
  }
}

class _EditTextLoginState extends State<EditTextLogin> {
  SharedPrefService sharedPrefService = SharedPrefService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 30, left: 30, top: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text('Email address*'),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'ua@gmail.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.blue, // You can change the border color
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text("Password*"),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: '12345',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.blue, // You can change the border color
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ReadResultEmail();
                    }));
                    sharedPrefService.writeCashe(
                        key: 'email', value: _emailController.text);
                  });
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
