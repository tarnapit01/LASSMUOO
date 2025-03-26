// screen/solar_system/solor_system_quiz/no1/solar_assignment_2.dart
import 'package:flutter/material.dart';

import 'package:lassmuoo/screen/result/end_assignment_1.dart';
import 'package:lassmuoo/screen/solar_system/solor_system_quiz/no1/solar_assignment_1.dart';

class SolarAssignment2Screen extends StatefulWidget {
  const SolarAssignment2Screen({super.key});

  @override
  State<SolarAssignment2Screen> createState() => _SolarAssignment2ScreenState();
}

class _SolarAssignment2ScreenState extends State<SolarAssignment2Screen> {
  String selectedChoice = "";
  String correctAnswer = "ระบบของดาวเคราะห์ที่โคจรรอบดวงอาทิตย์";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: TextButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return SolarAssignment1Screen();
              }));
            },
            child: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.white,
              size: 40,
            )),
        title: SizedBox(
          height: 10,
          child: LinearProgressIndicator(
            value: 0.5,
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF525CEB)),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Column(
            children: [
              Text("ระบบสุริยะจักรวาล",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                "ระบบสุริยะคืออะไร?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 350,
                height: 38,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedChoice ==
                            "ระบบของดาวเคราะห์ที่มีดวงจันทร์เป็นจุดศูนย์กลาง"
                        ? Colors.blue
                        : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      selectedChoice =
                          "ระบบของดาวเคราะห์ที่มีดวงจันทร์เป็นจุดศูนย์กลาง";
                    });
                  },
                  child: Text(
                    "ระบบของดาวเคราะห์ที่มีดวงจันทร์เป็นจุดศูนย์กลาง",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: selectedChoice ==
                              "ระบบของดาวเคราะห์ที่มีดวงจันทร์เป็นจุดศูนย์กลาง"
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 350,
                height: 38,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedChoice ==
                            "ระบบของดาวเคราะห์ที่โคจรรอบดวงอาทิตย์"
                        ? Colors.blue
                        : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      selectedChoice = "ระบบของดาวเคราะห์ที่โคจรรอบดวงอาทิตย์";
                    });
                  },
                  child: Text(
                    "ระบบของดาวเคราะห์ที่โคจรรอบดวงอาทิตย์",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: selectedChoice ==
                              "ระบบของดาวเคราะห์ที่โคจรรอบดวงอาทิตย์"
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 350,
                height: 38,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedChoice ==
                            "ระบบของดาวเคราะห์ 9 ดวงที่ไม่มีดวงจันทร์"
                        ? Colors.blue
                        : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      selectedChoice =
                          "ระบบของดาวเคราะห์ 9 ดวงที่ไม่มีดวงจันทร์";
                    });
                  },
                  child: Text(
                    "ระบบของดาวเคราะห์ 9 ดวงที่ไม่มีดวงจันทร์",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: selectedChoice ==
                              "ระบบของดาวเคราะห์ 9 ดวงที่ไม่มีดวงจันทร์"
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                height: 53,
                width: 257,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF525CEB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(180),
                    ),
                  ),
                  onPressed: () {
                    if (selectedChoice == correctAnswer) {
                      AlertDialog alert = AlertDialog(
                        title: Text("Correct"),
                        content: Text("Well Done!! Great Job!!"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return EndAssignment1Screen();
                              }));
                            },
                            child: Text("Next"),
                          ),
                        ],
                      );
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                    } else {
                      AlertDialog alert = AlertDialog(
                        title: Text("Incorrect"),
                        content: Text("Try again"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("OK"),
                          ),
                        ],
                      );
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                    }
                  },
                  icon: const Text(
                    "ตรวจคำตอบ",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  label: const Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
