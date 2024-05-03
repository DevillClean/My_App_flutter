/* main
 import 'package:flutter/material.dart';
 import 'package:flutter_application_1/home_screen.dart';
 import 'package:provider/provider.dart';

 void main(){

   int a = 21;
   List <String> b = ['Hello', 'Здравствуй'];

   runApp(
     MultiProvider(
       providers: [
         Provider(create: (context) => a),
         Provider(create: (context) => b),
         ChangeNotifierProvider(create: (context) => Temperature())
       ],
       child: MaterialApp(
           debugShowCheckedModeBanner: false,
           home: HomeScreen(),
        ),
       )
      Provider(
          create: (context) => b ,
           child: Provider(
              create: (context) => a,
              child: const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: HomeScreen(), 
            ),
        ),
      ),
   );
 }

 class Temperature extends ChangeNotifier {
   int temperature = 20;

   void plusTemp(){
     temperature++;
     notifyListeners();
   }
 }

*/

/* info_screen
  
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/main.dart';
import 'package:provider/provider.dart';


class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context){
    var a = Provider.of<int>(context);
    var temp = Provider.of<Temperature>(context).temperature;

    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Экран Информации'),
              Text(a.toString()),
              Text(temp.toString()),
            ],
          ),
        ),
      ),
    );
  }
}


*/

/* home_screen

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/settings_screen.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context){
    var temp = context.watch<Temperature>();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 0, 0),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Главный экран'),
              TextButton(
                onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => SettingsScreen(),
                  ),
                );
              }, 
                child: const Text('Settings')
              ),
              const SizedBox(height: 50),
              Text(temp.temperature.toString()),
               TextButton(
                onPressed: () {
                context.read<Temperature>().plusTemp();
              }, 
                child: const Text('Прибавить температуру')
              ),
            ],
          ),
        ),
      ),
    );
  }
}


*/

/* settings_screen

  import 'package:flutter/material.dart';
import 'package:flutter_application_1/info_screen.dart';
import 'package:provider/provider.dart';


class SettingsScreen extends StatelessWidget {
  
  const SettingsScreen( {super.key});


  @override
  Widget build(BuildContext context){
   var b =  Provider.of<List<String>>(context);

    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Экран настроек'),
              TextButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => InfoScreen(),  
                    ),
                 );
              }, 
              child: const Text('Информация')
              ),
              const SizedBox(height: 50),
              Text(b[1]),
            ],
          ),
        ),
      ),
    );
  }
}

*/