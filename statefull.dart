import 'package:flutter/material.dart';

void main() {
  runApp(const DomashniyEkran());
}

class DomashniyEkran extends StatefulWidget {
  const DomashniyEkran({super.key});

  @override
  State<DomashniyEkran> createState() => _DomashniyEkranState();
}


class _DomashniyEkranState extends State<DomashniyEkran> {
 int a = 0;

 @override
 Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
     home: Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 190, 1),
      body: SafeArea(
        child: Column(
          children: [
            IconButton(
             onPressed: () {
              a = a + 1;
              setState(() {});
              print(a);
             },
             icon: const Icon(Icons.radio_button_checked),
            ),
            Text(a.toString()),
          ],
        ), 
       ),
     ),
   );
  }
}
