import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: DirectorMagazina(),
          ),
        ),
      ),
    ),
  );
}

class DirectorMagazina extends StatefulWidget {
  const DirectorMagazina({super.key});

  @override
  State<DirectorMagazina> createState() => _DirectorMagazinaState();
}

class _DirectorMagazinaState extends State<DirectorMagazina> {
  int budget = 100000;

  vidatZarplatuKasiru(){
    print('Выдал зарплату Касиру');
    return(25000);
  }

  vidatZarplatuStazhoru(){
    print('Выдал зарплату Стажору');
    return(25000);
  }

  vidatZarplatuGruzschiku(){
    print('Выдал зарплату Грузчику');
    return(10000);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 176, 176, 176),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Это директор'),
          Kassir(),
          Gruzschik(),
        ],
      ),
    );
  }
}

class Kassir extends StatelessWidget {
  const Kassir({super.key});

  void _poytiZaZarplatoy(BuildContext context) {
    context.findAncestorStateOfType<_DirectorMagazinaState>()?.vidatZarplatuKasiru();  
  }

  void okazatPomoschStazhoru() {
    print('Оказал помощ стажору');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 103, 103, 103),
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text('Это кассир'),
            TextButton(
              onPressed: () {
                _poytiZaZarplatoy(context);
              },
              child: const Text('Пойти за заплатой'),
            ),
            const Stazher(),
          ], 
       ),
    );
  }
}

class Stazher extends StatelessWidget{
  const Stazher({super.key});

    _poytiZaZarplatoy(BuildContext context){

      context.findAncestorStateOfType<_DirectorMagazinaState>()?.vidatZarplatuStazhoru();  
    }

    void _poprositPomoshUKassira(BuildContext context){
      context.findAncestorWidgetOfExactType<Kassir>()?.okazatPomoschStazhoru();
      
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 76, 76, 76),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Text('Это стажер'),
          TextButton(
              onPressed: () {
                _poytiZaZarplatoy(context);
              },
              child: const Text('Пойти за зарплатой')
            ),
          TextButton(
              onPressed: () {
                _poprositPomoshUKassira(context);
              },
              child: const Text('Попросить помощи у кассира')
            ),
         ],
      ),
    );
  }
}

class Gruzschik extends StatelessWidget {
  const Gruzschik({super.key});

  razgruzil(){
    return 200;
  }

  _poytiZaZarplatoy(BuildContext context){
    context.findAncestorStateOfType<_DirectorMagazinaState>()?.vidatZarplatuGruzschiku();
  }


  @override 
  Widget build(BuildContext context){
    return Container(
      color: const Color.fromARGB(255, 72, 72, 72),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Text('Это грузчик'),
            TextButton(onPressed: () {
               _poytiZaZarplatoy(context);
            }, 
            child: const Text('Пойти за зарплатой'))
          ],
      ),
    );
  }
}


    