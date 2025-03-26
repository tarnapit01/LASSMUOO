// screen/solar_system/solor_system_quiz/no1/solar_quiz_3.dart

import 'package:flutter/material.dart';
import 'package:lassmuoo/layout/next_button.dart';
import 'package:lassmuoo/screen/solar_system/solor_system_quiz/no1/solar_quiz_4.dart';
import 'package:rive/rive.dart';

class SolarQuiz3Screen extends StatefulWidget {
  const SolarQuiz3Screen({super.key});

  @override
  State<SolarQuiz3Screen> createState() => _SolarQuiz3ScreenState();
}

class _SolarQuiz3ScreenState extends State<SolarQuiz3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'ดวงอาทิตย์',
                      style: TextStyle(fontFamily: "Mitr-Light",
                        color: Colors.amber[800],
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          "ทำหน้าที่เป็นแหล่งพลังงานและแรงดึงดูดที่คอยรักษาดาวเคราะห์ทั้ง 8 ดวงให้อยู่ในวงโคจร",
                      style: TextStyle(fontFamily: "Mitr-Light",
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                maxLines: 10,
              ),
              SizedBox(
                width: 400,
                height: 500,
                child: RiveAnimation.asset(
                    'lib/assets/rive/quiz_3_solar_no_1.riv'),
              )
              // SizedBox(
              //   height: 20,
              // ),
              // Spacer(),
              // NextButton(
              //   nextScreen: SolarQuiz4Screen(),
              // ),
            ],
          ),
        ));
  }
}
