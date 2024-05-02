/* Фабричный конструктор.  Данный паттерн определяет интерфекйс для создания обьектов 

Когда рекомендуеться применят данный подход?

1. когда заранее известно обьекты каких классов ему предстоит создавать.
2. Обьекты создаваемые классом должны специфицироваться его производными классами
3. Базовый клаасс дулигирует свои обязанности одному из производных классов и эти данные необходимо 
   инкапсулировать

(например: Имя обьекта и метод ходьбы)
Это и будет данными в капсуле, и одно из основных понятий в инкапсуляции - это
возможность защитить свойства и методы от необдуманого редактирования или прямого
получения. В языке програмирования Dart для этого созданы геттеры сеттеры и создание
приватных свойств через нижнее подчеркивание _

*/

enum PizzaType { Margarita, Mexico, Stella } 

abstract class Pizza {
  final int radius;
  final String name;

  Pizza({required this.name, required this.radius});

  double costPizza(); 

  @override

  String toString() {
    return 'Pizza $name has radius $radius cm';
  }
}


class Margarita extends Pizza {
  final double scalingFactor;

  Margarita(String name, int radius, this.scalingFactor)
    :super(name: name, radius: radius);

  @override 
  double costPizza(){
    return radius * scalingFactor;
  }
}

class Stella extends Pizza {
  final costPerSantimeter = 5;

  Stella(String name, int radius) : super(name: name, radius: radius);

  @override
  double costPizza(){
    return (radius * 2 * costPerSantimeter).toDouble();
  }
}

class Mexico extends Pizza {
  final double cost;

  Mexico(String name, int radius, this.cost)
    : super(name: name, radius: radius); 

  @override
  double costPizza(){
    return cost;
  }
}

class PizzaFactory {
  static Pizza factory(PizzaType pizzaType) {
    switch (pizzaType) {
      case PizzaType.Margarita:
       return Margarita('Margarita', 15, 3.1);
      case PizzaType.Stella:
       return Stella('Stella', 20);
       case PizzaType.Mexico:
       return Mexico('Mexico', 50, 13.4);
      default:
        throw ArgumentError();
    }
  }
}

void main(List<String> arguments){
  for (var value in PizzaType.values) {
    var pizza = PizzaFactory.factory(value);
    print(pizza.toString() +  'watch cost = ' + pizza.costPizza().toString()); 
  }
}