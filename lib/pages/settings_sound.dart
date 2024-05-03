import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';


class SettingsSound extends StatelessWidget {
  const SettingsSound ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 239, 168),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Settings Sound'),
               TextButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new),
                label: const Text('Вернуться назад'),
             ),
               TextButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context){
                         return const HairStylist();
                  }));
                },
                icon: const Icon(Icons.arrow_back_ios_new),
                label: const Text('Вернуться на главную'),
             ),
           ],
          ), 
        ), 
      ),
    );
  }
} 