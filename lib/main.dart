import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/page_counter.dart';
import 'package:flutter_application_1/pages/page_save_counter.dart';
import 'package:flutter_application_1/pages/page_tests.dart';
import 'package:flutter_application_1/pages/page_theme.dart';
import 'package:flutter_application_1/pages/result_screen.dart';
import 'package:flutter_application_1/pages/settings.dart';
import 'package:flutter_application_1/search_users.dart';
import 'package:flutter_application_1/ui/constans.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const BmiCalculatorApp(),
        '/settings': (context) => const Settings(),
        '/settings_sound': (context) => const PageCounter(),
        '/settings_theme': (context) => const SettingsTheme(),
        '/search_panel': (context) => const SearchUsers(),
        '/result_screen': (context) => const ResultPage(bmi: ''),
        '/dio_github': (context) => const MyApp(),
        '/shared_preferences': (context) => const SaveWidget(),
      },
    ),
  );
}

class BmiCalculatorApp extends StatefulWidget {
  const BmiCalculatorApp({super.key});

  @override
  State<BmiCalculatorApp> createState() => BmiCalculatorAppState();
}

enum Gender { male, female }

class BmiCalculatorAppState extends State<BmiCalculatorApp> {
  Gender? gender;
  var age = 16;
  var height = 150;
  var weight = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgk,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Settings();
                      }));
                    },
                    icon: const Icon(
                      Icons.menu,
                      size: 30,
                    )),
                const Text('BMI CALCULATOR')
              ],
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusCard(
                      color: gender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      callback: () {
                        setState(() {
                          gender = Gender.male;
                        });
                      },
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.mars, size: 90),
                          SizedBox(height: 5),
                          Text(
                            'MALE',
                            style: bodyTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusCard(
                      color: gender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      callback: () {
                        setState(() {
                          gender = Gender.female;
                        });
                      },
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.venus, size: 90),
                          SizedBox(height: 5),
                          Text(
                            'FEMALE',
                            style: bodyTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ReusCard(
              callback: () {},
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReusCard(
                    callback: () {},
                    child: Column(
                      children: [
                        const SizedBox(height: 3),
                        const Text('HEIGHT', style: bodyTextStyle),
                        Text(height.toString(), style: numberTextStyle),
                        Slider(
                            min: 130,
                            max: 220,
                            activeColor: bottomContainerColor,
                            value: height.toDouble(),
                            onChanged: (value) {
                              setState(() {
                                height = value.round();
                              });
                            })
                      ],
                    ),
                  )),
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusCard(
                      callback: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: bodyTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: numberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RawMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                shape: const CircleBorder(),
                                constraints: const BoxConstraints.tightFor(
                                    width: 46.0, height: 46.0),
                                elevation: 10,
                                fillColor: const Color(0xFF222747),
                                padding: const EdgeInsets.all(5),
                                child: const Icon(FontAwesomeIcons.minus),
                              ),
                              const SizedBox(width: 15),
                              RawMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                shape: const CircleBorder(),
                                constraints: const BoxConstraints.tightFor(
                                    width: 46.0, height: 46.0),
                                elevation: 10,
                                fillColor: const Color(0xFF222747),
                                padding: const EdgeInsets.all(5),
                                child: const Icon(FontAwesomeIcons.plus),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusCard(
                      callback: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: bodyTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: numberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RawMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                shape: const CircleBorder(),
                                constraints: const BoxConstraints.tightFor(
                                    width: 46.0, height: 46.0),
                                elevation: 10,
                                fillColor: const Color(0xFF222747),
                                padding: const EdgeInsets.all(5),
                                child: const Icon(FontAwesomeIcons.minus),
                              ),
                              const SizedBox(width: 15),
                              RawMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                shape: const CircleBorder(),
                                constraints: const BoxConstraints.tightFor(
                                    width: 46.0, height: 46.0),
                                elevation: 10,
                                fillColor: const Color(0xFF222747),
                                padding: const EdgeInsets.all(5),
                                child: const Icon(FontAwesomeIcons.plus),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            GestureDetector(
                onTap: () {
                  final heightSquared = height / 100;
                  final res = weight / (heightSquared * heightSquared);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ResultPage(bmi: res.toString());
                  }));
                },
                child: Container(
                  height: 80,
                  color: bottomContainerColor,
                  child: const Center(
                    child: Text(
                      'CALCULATE MY BMI',
                      style: largeBottomTextStyle,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class ReusCard extends StatelessWidget {
  final VoidCallback callback;
  final Color color;
  final Widget child;

  const ReusCard(
      {super.key,
      this.color = inactiveCardColor,
      required this.child,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: child,
      ),
    );
  }
}
