// screen/solar_system/solor_system_quiz/no2/solar_quiz_1.dart

import 'package:flutter/material.dart';
import 'package:lassmuoo/layout/next_button.dart';
import 'package:lassmuoo/screen/solar_system/solor_system_quiz/no1/solar_quiz_2.dart';

class SolarQuiz1Screen extends StatefulWidget {
  const SolarQuiz1Screen({super.key});

  @override
  State<SolarQuiz1Screen> createState() => _SolarQuiz1ScreenState();
}

class _SolarQuiz1ScreenState extends State<SolarQuiz1Screen> {
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
                      text: "มู", // คำที่ต้องการเปลี่ยนสีและขนาด
                      style: TextStyle(
                        color: Color(0xFF4EAF96), // เปลี่ยนสีเฉพาะคำว่า "มู"
                        fontSize: 48, // เปลี่ยนขนาดเฉพาะคำว่า "มู"
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          " เป็นนักสำรวจจาก \nดาวอันไกลโพ้นที่เดินทางสำรวจจักรวาล",
                      style: TextStyle(
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
                height: 20,
              ),
              Spacer(),
              NextButton(
                nextScreen: SolarQuiz2Screen(),
              ),
            ],
          ),
        ));
  }
}
