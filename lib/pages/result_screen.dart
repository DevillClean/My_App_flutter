import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/constans.dart';

class ResultPage extends StatelessWidget {
  final String bmi;

  const ResultPage({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgk,
      appBar: AppBar(
        backgroundColor: bgk,
        title: const Text(
          'BMI CALCULATOR',
          style: bodyTextStyle,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  const Text("YOUR BMI IS", style: resultTextStyle),
                  const SizedBox(height: 100),
                  Text(bmi, style: bmiTextStyle),
                ],
              ),
            ),
            const Align(alignment: Alignment.bottomCenter),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 80,
                  color: bottomContainerColor,
                  child: const Center(
                    child: Text(
                      'RECALCULATE MY BMI',
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
