// screen/solor_system_quiz/no1/solar_assignment_1.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lassmuoo/screen/Intro/home.dart';
import 'package:lassmuoo/screen/solor_system_quiz/no1/solar_assignment_2.dart';

class SolarAssignment1Screen extends StatefulWidget {
  const SolarAssignment1Screen({super.key});

  @override
  State<SolarAssignment1Screen> createState() => _SolarAssignment1ScreenState();
}

class _SolarAssignment1ScreenState extends State<SolarAssignment1Screen> {
  String answer = "8";
  String answer_user = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: TextButton(
            onPressed: () {
              AlertDialog alert = AlertDialog(
                title: Text("You want to exit?"),
                content: Text("You will lose your progress"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }));
                    },
                    child: Text("Yes"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("No"),
                  ),
                ],
              );
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  });
            },
            child: Icon(
              Icons.close_sharp,
              color: Colors.white,
              size: 40,
            )),
        title: SizedBox(
          height: 10,
          child: LinearProgressIndicator(
            value: 0.1,
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF525CEB)),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                "ในระบบสุริยะจักรวาล มีดาวเคราะห์ทั้งหมดกี่ดวง ?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Image.asset('lib/assets/images/planets/planet_group.png',
                  width: 300),
              SizedBox(height: 20),
              TextField(
                onChanged: (value) {
                  answer_user = value;
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "กรอกจำนวนดาวเคราะห์",
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
              SizedBox(height: 20),
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
                    if (answer_user == answer) {
                      AlertDialog alert = AlertDialog(
                        title: Text("Correct"),
                        content: Text("Well Done!! Great Job!!"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return SolarAssignment2Screen();
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
              SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
            ],
          ),
        ),
      ),
    );
  }
}
