/* Маin экран


 import 'package:flutter/material.dart';
 import 'Добавить путь (settings.dart)';
 import 'Добавить путь' (settings_sound.dart);

 void main(){
   runApp(
     MaterialApp(
       debugShowCheckedModeBanner: false,
       initialRoute: '/',
       routes: {
         '/': (context) => const Main(),
         '/settings': (context) => const Settings(),
         '/settings_sound': (context) => const SettingsSound(),
       },
     ),
   );
 }

 class Main extends StatelessWidget {
   const Main({super.key});

   @override 
   Widget build(BuildContext context) {
     return Scaffold(
       body: SafeArea(
         child: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               const Text('Main'),
               TextButton.icon(
                 style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.all(Colors.black),
                   foregroundColor: MaterialStateProperty.all(Colors.white),
                 ),
                 onPressed: () {
                   Navigator.pushNamed(context, '/settings');
                 },
                 icon: const Icon(Icons.settings),
                 label: const Text('Перейти в настройки'),
               ),
             ],
           ), 
         ),
       ),
     );
   }
 }

*/

/* Settings - 2 экран

import 'package:flutter/material.dart';
import 'package:flutter_application_1/settings_sound.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 174, 168),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Settings Page'),
              TextButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios),
                label: const Text('Вернуться назад'),
              ),
              TextButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const SettingsSound();
                  }));
                },
                icon: const Icon(Icons.keyboard_voice_sharp),
                label: const Text('Настройки звука'),
              ),
            ],
          )
        )
      ),
    );
  }
}

*/

/* settings_sound - 3 экран

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
           ],
          ), 
        ), 
      ),
    );
  }
} 
*/