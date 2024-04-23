/*  Виджеты 
                                     

  Stateless - виджет НЕвозможно изменяться
  Stateful - возможность изменяться 

  Steteless - просто существует и не изменяеться 
  Stateful - просто существует и отслеживает каки-либо изменения
             что бы заново перерисоваться

  stateless - виджет статика
  stateful - виджет динамика

  stateless - чаще всего - просто строка, информация , иконка , приветствие
                           то что в нашем приложении меняться не будет
  
  stateful - виджет - может быть полем ввода, экраном отображение секундомера



 отличие между Stateless и Stateful
 Stateless это просто статичный виджет который никогда не будет изменяться
 текст или блок который не подлежит изменению 
 Stateful - это то что мы можем пересоздавать , какая-то переменная 


(пример)
 class MyHomePage extends StatefulWidget {
 const MyHomePage({super.key, required this.title});
 final String title;

 сам виджет создает внутри себя состояние - State
 то что внутри себя может менять , менять значение разных переменных
 




*/

/* Верстка
  
  mainAxisAlingment : mainAxisAlingment.(параметры разметки)
  crossAxisAlignment: CrossAxisAlignment.(параметры разметки по линии)

  padding: - это отступ внутри
  margin - это внешний отступ между элементами

   home: Scaffold(
        backgroundColor: Colors.blue, (изменение заднего фона)



============================== Stack - это тот виджет который может накладывать друг на друга элементы
  Stack(
     children: [
      Padding(padding: const EdgeInsets.all(3.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: const Color.fromARGB(255, 65, 32, 32),
          ),
          padding: const EdgeInsets.symmetric(
           vertical: 12,
           horizontal: 18,
          ),
          child: Column(
           children: const [
             Text(
               '11',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 color: Colors.white,
               ),
             ),
             Text(
               's',
               style: TextStyle(
                 color: Colors.white,
               ),
             ),
             SizedBox(height: 5),
             Icon(
               Icons.alarm,
               color: Colors.white,
               size: 14,
             ),
           ],
          ),
        ),
      ),
                       
============================== Positioned - дает возможность позиционировать элементы так как нам нужно
 
   Positioned(
     right: 0,
     top: 0,
     child: Container(
       width: 10,
       height: 10,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
         color: Colors.red,
         border: Border.all(
           color: Colors.white,
         ),

================================ Wrap - он выстраивает всегда элементы слева на право и выставляет элементы на следующую строку
================================ SingleChildScrollView - body : SingleChildScrollView (скрол приложения)
*/


/* Кнопки

 children: [
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.arrow_back_ios_new_rounded),
    ),
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.search_rounded),
    ),
  ],

  children: [
    InkWell(
      onTap: () {},
      icon: const Icon(Icons.arrow_back_ios),
    )
  ]

  
*/