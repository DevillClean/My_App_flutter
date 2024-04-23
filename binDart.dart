// import 'dart:ffi';


// int calculate(){
//  return 6 * 3;
// }

// var point = 0.4;

// void main(){
  // print(calculate());

  // double point = 0.4;
  // point++;

  // String some;
  // some = 'hello';

  // bool isHappy;
  // isHappy = true;

  // print(point);
  // print('Переменная ${point + 0.5}. Eshe chtoto: ${some.toUpperCase()}');

  // dynamic dynamicData = 5;
  // dynamicData = 'word';
  // dynamicData = false;
  // print(dynamicData);


  // var a = 15, b = 5;

  // print('+ : ${a + b}');
  // print('- : ${a - b}');
  // print('/ : ${a / b}');
  // print('* : ${(a * b).toInt()}');
  // print('% : ${a % b}');




  //   var a = 5, b = 5;
  // if(a == b) {
  //   print('hello');
  // }



//================================= Проверка




//   var res = a == 5 ? 10 : 20;
//   var right = 5;
//   switch (right) {
//     case 4:
//       print('equal ');
//       break;
//     case 5:
//       print('equal 2');
//       break;
//       default:
//       print('none');
//   } 

// }

//=================================== скиски

// void main() {
//   var nums = [4,5,6, 'Hello'];
//   nums.add(7);
//   nums.addAll([8,9,10]);

//   nums.remove(8);
//   nums.removeAt(0);

//   print('First : ${nums.first}. Last: ${nums.last}'); 
// }


//============================ Цыклы 

// void main(){
//   var nums = [1,2,3,4,5,6];

  
//   for(var i = 0; i < nums.length; i++){
//     nums[i]++;
//     print(nums[i]);
//   }
// }

 //============================= OOП class , objects, constructor
//Конструктор это Инструкция для полуыение данных этого класса
//В каждом классе можно прописывать любое количество методов


// class User {
//   final String name;
//   int age;
//   bool vsrosliy;

//   User(this.name, this.age, this.vsrosliy);
// }

// class Animal {
//   final bool hvost;
//   final String vid;

//   Animal(this.hvost, this.vid);
// }



// void main(){

//   User ivan = User('Ivan', 45, true);
//   User vasya = User('Vasya', 35, true);
 
 //Можно использовать разные математичяеские операции 

//   print(ivan.age + vasya.age);


// }


// Инструкуия к экземпляру класса
// У нас 2 экземпляра Иван и петр
// Меоды это функции внутри класса их можно писать любое количество



// class Human {
  
  //Свойство 
//   String name;
//   int age;
  
  //Конструктор
//   Human(this.age, this.name);
  
   //Метод 
//   yearsBirthday(){
//     int result = 2000 - age;
//     return result;
//   }

  //Переопределить 

//   @override 
//   toString(){
//     return 'Имя: $name, Возраст: $age';
//   }
// }


// void main(){
//   var ivan = Human(22, 'Ivan');
//   var petr = Human(12, 'Petr');
  
//   print(ivan.toString());
//   print(petr.toString());
// }



//Зачем нужны классы ?
// -Создать список сотрудников
//Классы дают надежность в коде для другого разработчика и показывают инструкцию



// class Rabotnik {
//   final String name;
//   final List<int> zp;
  
//   Rabotnik({required this.name, required this.zp}) {
//     int result = 0;
//     for(var i = 0; i < zp.length; i++){
//       result = zp[i] + result;
//     }
//     print(result / zp.length);
     // нужно при создании экземпляра
//   }
// }



 //required - ставит данные обязательными
 // Фигурные скопки для синтаксиса - name: 'Ivan' , zp



// void main(){
  
//  var ivan = Rabotnik(name: 'Ivan', zp: [35000,40000,45000]);
//  var petr = Rabotnik(zp: [20000, 23000, 25000], name: 'Petr');
// }


// class Rabotnik {
//   final String name;
//   final List<int> zp;
  
//   Rabotnik({required this.name, required this.zp});
//   Rabotnik.prostoy(this.name, this.zp);
  
  
   //Конструкторов через точку . можно создавать сколько угодно


// }


// void main(){
  
//  var ivan = Rabotnik(name: 'Ivan', zp: [35000,40000,45000]);
//  var petr = Rabotnik(zp: [20000, 23000, 25000], name: 'Petr');
  
//  var vasya = Rabotnik.prostoy('Vasya', [23000, 33000, 40000]);
// }


// class Pabotnik {
//   String name;
//   List<int> zp;

//   Pabotnik( this.name, this.zp);

//   double get sredZp{
//     var rezultat = 0;
//     for (var i = 0; i < zp.length; i++){
//       rezultat = rezultat + zp[i];
//     }
//     return rezultat / zp.length;
//   }

//   set chetvetayaZp(value){
//     zp.add(value);
//   }
// }

// void main() {

//   var vasya = Pabotnik('Vasya', [30000, 35000, 40000]);


//   vasya.chetvetayaZp = 75000;
//   print(vasya.zp);
//   print(vasya.sredZp);
// }


//=================================Наследование

// import 'dart:ffi';

// class Sotrudnik {
//   String fio;
//   int vosrast;
//   String passport; 

//   Sotrudnik(this.fio, this.vosrast, this.passport);
// }

// class Director extends Sotrudnik {
//   bool upravleniePersonalom; 

//   Director(super.fio, super.vosrast, super.passport, this.upravleniePersonalom);


//   @override
//   fioIpasport(){
//     return fio + passport + upravleniePersonalom.toString();
//   }
// }



//  void main() {
//   var sotr = Sotrudnik('fio', 32, '2334 4243');
//   var dir = Director('Semen Semenovich', 23, ' 2334 4555', true);

//   print(dir.fioIpasport());

//  }


// ====================== Инплеменция
// осуществление , выполнение или практическая реализация
// мы создали первый класс , создали второй и должны все это унаследовать 
// потомок может все это унаслдедовать , наследоваться можем от одного класса
//инклеменция от нескольких

// class ID {
//   final int id;

//   ID(this.id);
// }

// class Name {
//   final String name;

//   Name(this.name);

//   String showName(){
//     return name;
//   }

// }

 // мы должны забрать свойства и методы 

// class User implements ID, Name {
//   @override
//   final int id;

//   @override
//   final String name = 'Ivan';

//   User(this.id);
//   @override
//   String showName(){
//     return '$name $id';
//   }
// }

// инклеменция говорит нм о том что мы долждны выписать интерфейсы

//   var ivan = User(12332414);

// void main(){
//   print(ivan.showName());

// }


//===================== Миксины (примесы) - mixin
// мы прошли наследование ( это когда мы можем от класа наследовать все все свойства, переменные методы)
// мы прошли инклементирование это когда мы можем перенимать все свойтса не от одного класса а от нескольких
// миксины  это такие примесы которые должны применяться к классам с with
// миксины применяються к свойствам и методам

// !! ДЗ посмотреть разные видео про наслдедование про инклементацию про миксины !!!!


// mixin showName{
//   int? id;

//   showThisName(String name){
//     return name;
//   }
// }


// class User with showName {
//   String name; 
//   User(this.name);
// }

// class UserPro with showName {
//   String name;
//   UserPro(this.name);
// }

// var ivan = User('Ivan');
// var volodya = UserPro('Volodimir');

// void main(){
//   print(ivan.showThisName(ivan.name));
//   ivan.id = 1233124;
// } 




//=========================Абстрактный класс 
// асбстрактный класс не имеет свойств , он может передавать 
// асбстрактнм классом мы сожем писать много много свойств для понимания и у него нету экземпляров
// абстрактный класс нужен что бы он что-то описывал но что бы нельзя было создавата его экземпляр
// а наследники могут брать уже в любом количестве


// abstract class Name {
//   String name ;
//   Name(this.name);
// }

// class UserPro extends Name{
//   String lastname;

//   UserPro(this.lastname, super.name);
// }



// void main(){
  
// }



// ================== Пасширение любого существующего класса Exstends
// как мы помним int это просто целое число и его так же можно расширять(Exstends int)
// любой класс мы сожем улучщить своими методами при этом не переписывая код

// class User {
//   String name; 

//   User(this.name);
// }

// extension PrintName on User{
//   printName(){
//     return name; 
//   }
// }

// extension PlusOne on int{
//   plusOne(){
//     return this + 1;
//   }
// }

// void main(){
//   // var ivan = User('Ivan');

//   int a = 29;
//   print(a.plusOne());
//   // print(ivan.printName());
// }


//========================== Static в классах
// в переводе означает что-то неподвижное что-то изменяющееся
// static можно выводить в любой части кода и мы понимаем что это экономит наши ресурсы
// здесь нет свтйств , здесь есть сама инструкция по созданию экземпляра
// Иногда классы создаються именно для таких целей


// class User {
//   static const int age = 42;
//   String name;

//   User(this.name);
// }

// var ivan = User('Ivan');

// void main(){
//   print(User.age);
// }

// ===================================== 2 вариант

// class Settings {
//   static const language = [
//     'eu',
//     'ua',
//     'ru',
//     'en',
//     ];

//   static const nightMode = [
//     'day',
//     'night',
//   ];   
// }


// void main(){

//   print(Settings.language);
//   print(Settings.language[1]);
//   print(Settings.language[2]);
// }



//==================================== Generic или обобщение
// Generic или обобщение типов данных
// при вооде типа данных int - мы знем что мы привязываемся к этому типу данных да?
// джинерики помогают создавать универсальные типы данных
// мы можем сделать универсальный тип путем <T extends num>   
// dynamic нужен для того что бы определить и дать программе понять сколько нужно данных
// <T> обьявляем то что любая часть данных являеться динамической <Т> типо тайп - тип
// num это намбер соответственно чмсло может быть любым
// например 


// delenie<T extends num>(T a, T b){
//   return a / b;
// }

// строку на строку делить нельзя по этому мы переопределяем тип в num и теперь 
// T может быть инт и может быть дабл и нам то есть мы создали джинерик
//  который модет принимать в себя разные типы данных и сейчас нам не нужно создавать доп инструкции
// то есть блягодаря этому Т можем переключать тип данных


// void main(){
//   print(delenie(100, 2));
// }

//================================ 2 вариант


// class User<T>{
//   String name;
//   T password;

//   User(this.name, this.password);

//   // сюда мы можем прописывать функции и они будут работать как джинерик
// }

// void main(){

//   var ivan = User('vanya', 2323.2132);
//   // например пароль будет даблом
//   var petr = User('Petr', [23, 23, 23]);

//   // пароль в этом случае мы можем поменять только на дабл а на строку не поменяется
//   ivan.password = 123324;
//   // а у перта мы можем писать только лист который вспринимает целые числа
//   petr.password = [20, 20, 33];

//   print(petr.password);

//   // в будущем мы не сможем поменять данные кроме как дабл
// } 


// ========================== обработка ошибок: Try / ON / CATCH / finally
// try -                        catch-
// 
// finally - это зона где код в люом случае выполниться
// trew - выбросить ошибку - к примеру выбросить класс что бы кто-то на это посмотрел перед тем как программа упадет
// !!!! посмотреть еще видео об обработке ошибок


// class ClassName {
//   Object e;
//   String peremennaya;

//   ClassName(this.e, this.peremennaya);

//   @override
//   String toString(){
//     return '$e - и переменная $peremennaya';
//   }
// }

// // пишем функцию

// delenie(int a, int b){
//   if (a == 0) {
//     throw ClassName(a, 'a');
//   } else if(b == 0) {
//     throw ClassName(b, 'b');
//   }
// }

// void main(){
//  print('Приложение начало работать');

//   try {
//      print(delenie(7, 0));
//   } on ClassName catch (e) {
//     print(e);
//   } catch (e) {
//     print(e);
//   } finally{
//     print('Finally');
//   }

//    print('Приложение продолжает работать');
// } 


// ==================================== Future в Dart
// future это что-то что приходит к нам из будущего 
// future это класс со своими свойствами и методами который написан в дарт
// future имеет ряд свойств и чаще всего мы будем использовать then. - то есть что сделать или когда сделать


// void main(){
//   int a = 1;
//   Future<int> b = Future.delayed(Duration(seconds: 5)).then((value) => 2);
//   int c = 3;
  
//   print(a);
//   b.then((value) => print(value));
//   print(c);

// }


// ================================= Future dart 2 
// мы должны понимать что асинхронность это не про многопоточность
// асинхронность это про future 


// Ассинхронный процесс выполнения задач 

// 1 шаг выполняесться первым
// 2 шаг выполняесться вторым
// 3 шаг (Future) выполнить после того как дойдешь до конца
// 4 шаг выполняесться третим
// 5 шаг выполняесться четвертым и дальше шагов больше нет
// выполниться future пятым 

// Что за процессы происходят через Future?
// Примеры :
// 1- загрузка файла из телефона
// 2- загрузка рекламы в приложении
// 3- загрузка базы данных перед ее использованием и тд


// void main(){
//   print(1);
//   print(2);
//   Future.delayed(Duration(seconds: 4)).then((_) => print(3));
//   print(4);
//   print(5);
// }


//=================================== Future dart 3 async await
// функции бывают синхронными и асинхронными 
// что делает async await ? - указывая эти стоки мы буквально говорим приложению о том что
// нужно подождать и только потом выполнить опирации в очередности
// !!! посмотреть другие видко об async await

// Future<int> goFunc(){
//   Future<int> result = Future.delayed(Duration(seconds: 3)).then((value) => 20);
//   return result; 
// }

// void main() async {
//   print(10);
//   await goFunc().then((value) => print(value));
//   print(30);
// }


// ====================================== Stream / StreamSubscription / StreamController
// Stream - конвеер событий
// StreamSubscription - подписка на конвеер событий
// StreamController - создаем конвеер , в котором сможем докидывать данные и который не заключен в временные события
//!!!!!! посмотреть лейзилоад или другие видео про конвеер

// import 'dart:async';

// void main(){
  
//   Stream<int> konveer = Stream.periodic(Duration(seconds: 1), (tick) => tick);
//   StreamSubscription<int> podpiskaNaKonveer = konveer.listen((tick) {
//     if (tick == 3) {
//       print('Hello Users!');
//     }
//     print(tick);
//   });

//   //отписка из конвеера отписка всегда обязательна

//   Future.delayed(Duration(seconds: 7)).then((value) => {
//     podpiskaNaKonveer.cancel()
//   });
// }

//=========================== Ctream Controller
// можно прослушивать события и все что есть внутри

// import 'dart:async';

// void main(){
//   StreamController controller = StreamController();

//   controller.add('Первый');
//   controller.add('Второй');
//   controller.stream.listen((event) {
//   print(event);
//     if (event == 'Второй') {
//       print('Точно втопой');
//     }
//   });
//   controller.add('Третий');
//   controller.add('Четвертый');

// }

// ===================================== генераторы Generators (Синхронный) [3, 4, 5, 6, 7]
//Iterable - как родительский класс


// Iterable<int> generatorOtIDo(int start , int finish) sync* {
//   for (var i = start; i <= finish; i++) {
//     yield i; 
//   }
// }

//  void main(){
//   print(generatorOtIDo(3, 7).toList());
//  }


//============================ (асинхронный) генерирует так же 3,4,5,6,7

// Stream<int> generatorOtIDo(int start , int finish) async* {
//   for (var i = start; i <= finish; i++) {
//     yield i;
//   }
// }

// void main(){
//   generatorOtIDo(3, 7).listen((event) {
//     print(event);
//   });
// }


// ====================================== enum - это перечеслитель
// то что содержит в себе список элементов
// то что защищено от редактирования
// к примеру в листе мы можем удалить элементы , а в enum нет 
// все элементы выстроены как в листе
// отличие в том что мы не можем переопределить
// по мимо того что он не имеет типа мы можем создать конструкт 

// enum Colors {
//   red(50,100),
//   blue(50,100),
//   green(50,100),
//   yellow(50,100);

//   final int opacity50;
//   final int opacity100;

//   const Colors(this.opacity50, this.opacity100); 
// }

// void main() {
//   print(Colors.blue);
//   print(Colors.blue.name);
//   print(Colors.blue.index);
//   print(Colors.blue.opacity50);
// }

 
//============================================== Замыкание, что это и как это работает
// примеры где это работает
// 1 Магазин книг 
// каждая книга имеет : название книги и издателя этой книги
// название книги никогда не меняеться а издатель может меняться
// Название : Гарри поттер, издатель: Альфа


// book(nazvanieKnigi) {
//   return (izdatelKnigi) {
//     return 'Название книги: $nazvanieKnigi, Издатель: $izdatelKnigi';
//   };
// }

// void main(){

//  var garryPotter = book('Гарри Поттер');
//  garryPotter = garryPotter('Alfa');

//   print(garryPotter);
// }



//======================================= Анонимные функции 
// Функции без имен
// Представим себе функция которая выполняет вычислительные операции

// double uniFunc(double a , double b, Function operation) {
//   return operation(a, b);
// }

// void main(){
//   var result = uniFunc(5, 500,(a, b) => b / a);
//   print(result);
// }
 

//===================================== Обявлять переменные одного типа в одну строку


// String a = 'Всем', b = ' Привет' , c = 'Как дела?';

// void main(){
//   print(a + b);
// }
//================================== Как красиво сочитать строку с переменными ===================================

// String a = 'Привет';
// List b = ['Hello', 'как дела'];

// void main(){
//   String c = '$a, мой друг! ${b[1]}';

//   print(c);

// }

//============================================ Инвертировать булевое значение с помощу знака "!"============


// bool a = true;

// void main(){

//   print(a);
//   print(!a);

// }


//============================================ Условная конструкция в одну строку========================

// bool a = true;

// void main(){
//   if(a) print('if сработал если а = true');
//   if(!a) print('if сработал если а = false');
//   a ? print('сработал если а = true') : print('Сработал если а = false');
// }


// ========================================== Корректное и красивое обьявление списков

// void main(){

//   var points = <double>[];
//   var address = <String>, int {};
//   var counts = <int>{};
// }


// ============================================== Вложить в один список - другой
//   List a = [1, 2, 3];
//   List b = [...a];
// // или через запятую вложить списки в один List b = [...a,....a];
// // через 3 точки вложили а и получили 1 2 3

// void main(){
//   print(b);
// }


// =================================================== Каскадная нотация ..add() ..add() ..add()

// List b = [];

// void main(){
//   b..add('Perviy')..add('Vtoroy')..add('Tretiy');

//   print(b);
// }

//====================================================== Функции в одну строку

// int myFunction() => 2 + 2; 

// void main(){
//   print(myFunction());
// }

//====================================================== Прощупать переменную на значение null;

// int? a;

// void main(){

//   print(a ?? 'Переменная а = null по этому текст будет здесь');

// }



















//====================================================== Dart во Flutter
//Наследование 
//Абстрактное понятие в обьектно-ориентированом програмировании
//Наследование позволяет передать возможности из родительского в дочений обьект

// Что нужно знать конкретно про Dart 
//  - Dart  Поддерживает наследование только от одного обьекта.
//          что значит, что наследовать от двух родительских обьектов в Dart нельзя 
//          при этом поддерживается транзитивное наследование, что в свою очередь значит, что в 
//          схеме ("прородительский" > "родительский" > "Дочерний")
//          "дочерний" наследует все от "прородительского"
//  - Важно поннить, что обьект, который "наследует возможности" не наследует конструктор от 
//          родительского обьекта. Конструктор необходимо создавать самому
//  - Так как в Dart наследование работает только от одного родительского обьекта, то необходимость
//          в множественном наследовании решается через имплементацию (implements) и примеси (mixin).
//          Можно предположить , что создатели языка Dart специально не включили возможность 
//          множественного наследования, так как это сопровождаеться проблемами в виде одинаковых
//          имен свойств, методов и тд.

// class Creatures{
//   String name;
//   int age;

//   Creatures(this.name, this.age);
// }

// move() {
//  return 'Двигаться';
// }

// class People extends Creatures {
//   People(super.name, super.age);

//   @override
//   move() {
//     return 'Человек двигается';
//   }
// }

// class Child extends People with Passport {
//   Child(super.name, super.age);

//   @override 
//   move(){
//     return 'ребенок ползет';
//   }

//   crying(){
//     return 'ребенок плачет';
//   }
// }

// // Инплеменция говорит нам о том что мы должны обьявить и реализовать свойства

// class Newborn implements Child {
//   @override
//   String name;
//   @override
//   int age;

//   Newborn(this.name, this.age);

//   @override
//   crying() {
//     return 'новорожденный плачет';
//   }

//   @override
//   move(){
//     return 'Новорожденный крутиться';
//   }

//   @override
//   addPassport(){
//     return 'Присвоим пасспорт новоражденному';
//   }
// }

// class Animals extends Creatures {
//   Animals(super.name, super.age);

//   @override 
//   move(){
//     return 'Животное двигается';
//   }
// }

// class Cat extends Animals {
//   Cat(super.name, super.age);

//   @override 
//   move(){
//     return 'ходит лапками';
//   }
// }

// mixin Passport{
//   addPassport() {
//     return 'Присвоим пасспорт';
//   }
// }


/*
   Наглядно ирархия с наследованиями

     > Существа 
          > Люди 
              > Дети
                  > Новорожденный (Инплементировался от детей и присвоил примесь Пасспорт)
          > Животные
              > Кошка

     ^ примесь: Пасспорт

*/  


// Полиморфизм Простыми словами это "разная" реализация одого и тогоже как на примере того, что есть
//             существа и они двигаются, есть люди - они ходят , есть дети - они ползают
//             есть кошки - они ходят лапками 
//             Выходит так, что есть "один интерфейс" - 'но много разных реализаций'

// помним что абстрактрый класс не позволяет создавать реальные обьекты

abstract class Animal {
  growl();
}

class Leo extends Animal {
  @override
  growl(){
    return 'рычит по львиному';
  }
}

class Fox extends Animal {
  @override
  growl(){
    return "рычит по лисичьи";
  }
}

/* Инкапсуляция простыми словами - в переводе - внутри , типо в капсуле
                Получаеться это абстрактное понятие значит что мы можем создавать 
                что угодно своими методами и свойствами (например: Имя обьекта и метод ходьбы)
                Это и будет данными в капсуле, и одно из основных понятий в инкапсуляции - это
                возможность защитить свойства и методы от необдуманого редактирования или прямого
                получения. В языке програмирования Dart для этого созданы геттеры сеттеры и создание
                приватных свойств через нижнее подчеркивание _
*/
// инкапсуляция позволяет защищать свойства


// class User {
//   String? _name;
// }
//   set setName(String name) {
//     _name = name;
//   }

//   get showName {
//     return _name;
//   }

// void main(){
//   final ivan = User();

//   ivan._name = 'ivan';

//   print(ivan._name);
// }



//======================================= фабричные контструкторы / Factory Constructors

// class User {
//   int id;

//   static final cashUsers = <User>[
//     User(0),
//     User(1),
//     User(2),
//   ];

//   // обычный конструктор создает всегда новые обьекты
//   User(this.id);
//   // фабричный не всегда создает обьекты и дает возможность работать с условиями
//   factory User.cache(int id){
//   // тут мы можем создавать практически все что угодно , циклы , услные конструкции и тд
//     if (id == 0) {
//       return cashUsers[0];
//     } else if (id == 1){
//       return cashUsers[1];
//     } else if (id == 2){
//       return cashUsers[2];
//     } else {
//       return User(id);
//     }
//   }
// }

// class Director extends User {
//   Director(int id) : super(id);
//   // мы сейчас можем любых потомков перенимать , например Директор
// }

// final a = User.cache(0);
// final b = User.cache(0);

// void main(){
//   print(a.hashCode);
//   print(b.hashCode);
// }

// ============================================= Первое - глобальная зона видимости
//                        В этой зоне нельзя запускать цикл и пользоваться условными конструкциями


// ============================================= Второе - Все внутренние зоны должны выстраиваться 
//                                                        строго в очередности

//============================================== Третье - любая функция это своя зона видимости,
//                                                        любая конструкция if else - это тоже своя
//                                                        зона видимости, любой цикл - это тоже своя
//                                                        зона видимости

