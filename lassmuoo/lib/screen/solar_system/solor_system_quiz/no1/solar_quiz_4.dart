// screen/solar_system/solor_system_quiz/no1/solar_quiz_4.dart

import 'package:flutter/material.dart';
import 'package:lassmuoo/layout/next_button.dart';
import 'package:lassmuoo/screen/solar_system/solor_system_quiz/no1/solar_assignment_1.dart';
import 'package:rive/rive.dart';

class SolarQuiz4Screen extends StatefulWidget {
  const SolarQuiz4Screen({super.key});

  @override
  State<SolarQuiz4Screen> createState() => _SolarQuiz14creenState();
}

class _SolarQuiz14creenState extends State<SolarQuiz4Screen> {
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
                      text: "ต่อไปเล่นเกมเพื่อช่วย \nให้ ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "มู", // คำที่ต้องการเปลี่ยนสีและขนาด
                      style: TextStyle(
                        color: Color(0xFF4EAF96), // เปลี่ยนสีเฉพาะคำว่า "มู"
                        fontSize: 38, // เปลี่ยนขนาดเฉพาะคำว่า "มู"
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: " เข้าใจระบบสุริยะ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                maxLines: 10,
              ),
              SizedBox(width: 400,
                height: 500,
                child: RiveAnimation.asset("lib/assets/rive/quiz_4_solar_no_1.riv"))
              // SizedBox(
              //   height: 20,
              // ),
              // Spacer(),
              // NextButton(
              //   nextScreen: SolarAssignment1Screen(),
              // ),
            ],
          ),
        ));
  }
}
