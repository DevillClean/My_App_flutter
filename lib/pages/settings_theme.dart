import 'dart:async';
import 'package:flutter/material.dart';



class SettingsTheme extends StatefulWidget{
 @override

 _SettingsThemeState createState() => _SettingsThemeState();
}

class _SettingsThemeState extends State<SettingsTheme> {
  ColorBlock _block = ColorBlock();

  @override
  void dispose() {
    _block.dispose();
    super.dispose();
  }
  @override

  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLoC with Strem',),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 136, 1, 255),
      ),
      body: Center(
        child: StreamBuilder(
          stream: _block.outpootStateStreem,
          initialData: Colors.red,
          builder: (context, snapshot) {
            return AnimatedContainer(
              width: 100,
              height: 100,
              color: snapshot.data,
              duration: const Duration(milliseconds: 500),
            );
          },
        ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(onPressed: (){
              _block.inputEventSink.add(ColorEvent.event_red);
            },
              backgroundColor: Colors.red,
              heroTag: null,
            ),
            const SizedBox(width: 10),
            FloatingActionButton(onPressed: (){
                _block.inputEventSink.add(ColorEvent.event_green);
            },
              backgroundColor: Colors.green,
            ),
          ],
        ),
    );
  }
}


// содежит в себе события их тут 2
enum ColorEvent{  event_red , event_green }

class ColorBlock {
  Color _color = Colors.red;
// входящий поток который принимает ColorEvent 
  final _inputEventController = StreamController<ColorEvent>();

// .sink - это входной поток в который пользователь передает события или данные , то есть добавляем события в поток
  StreamSink<ColorEvent> get inputEventSink => _inputEventController.sink;

// тут мы создаем поток для нового состоянмя которое будет содержать в себе 
  final _outpootStateController = StreamController<Color>();
  
// stream - тут стрим - выходной поток 
  Stream<Color> get outpootStateStreem => _outpootStateController.stream;

// реализовываем метод где будет преобрзовываться события в новое состояние
  void _mapEventToState(ColorEvent event) {
    if (event == ColorEvent.event_red)
      _color = Colors.red;
    else if (event == ColorEvent.event_green) _color = Colors.green;
    else throw Exception('Wrong Event type');

// после того как мы получим новое состояние , его нужно добавить в выходной поток используя мотод add. и sink
    _outpootStateController.sink.add(_color);
  }

// теперь нам нужно подписаться на метод выходного потока для прослушивания нового состояния
// здесь мы подписываемся на поток пришедшего со стороны UI
// и трансформируем их уже в новый state через метод _appEventToState
  ColorBlock(){
    _inputEventController.stream.listen((_mapEventToState));
  }
// по окончании потоков их нужно закрыть 

  void dispose(){
    _inputEventController.close();
    _outpootStateController.close();
  }
}

