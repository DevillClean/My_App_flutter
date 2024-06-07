import 'dart:async';

import 'package:flutter/material.dart';

class SettingsTheme extends StatefulWidget {
  const SettingsTheme({super.key});

  @override
  _SettingsThemeState createState() => _SettingsThemeState();
}

class _SettingsThemeState extends State<SettingsTheme> {
  final ColorBlock _block = ColorBlock();

  @override
  void dispose() {
    _block.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BLoC with Stream',
        ),
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
          FloatingActionButton(
            onPressed: () {
              _block.inputEventSink.add(ColorEvent.event_red);
            },
            backgroundColor: Colors.red,
            heroTag: null,
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              _block.inputEventSink.add(ColorEvent.event_green);
            },
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }
}

enum ColorEvent { event_red, event_green }

class ColorBlock {
  Color _color = Colors.red;

  final _inputEventController = StreamController<ColorEvent>();
  StreamSink<ColorEvent> get inputEventSink => _inputEventController.sink;

  final _outpootStateController = StreamController<Color>();
  Stream<Color> get outpootStateStreem => _outpootStateController.stream;

  void _mapEventToState(ColorEvent event) {
    if (event == ColorEvent.event_red) {
      _color = Colors.red;
    } else if (event == ColorEvent.event_green)
      _color = Colors.green;
    else
      throw Exception('Wrong Event type');

    _outpootStateController.sink.add(_color);
  }

  ColorBlock() {
    _inputEventController.stream.listen((_mapEventToState));
  }

  void dispose() {
    _inputEventController.close();
    _outpootStateController.close();
  }
}
