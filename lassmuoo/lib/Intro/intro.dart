// Intro/intro.dart
import 'package:flutter/material.dart';
import 'package:lassmuoo/Intro/f_intro.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(12, 0, 12, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "LASSMUOO",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.deepPurple),
              ),
              SizedBox(height: 20),
              Text(
                "เรียนรู้ดาราศาสตร์ กับ มู ผู้รอบรู้",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 37,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset("lib/assets/images/Alien.png"),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple),
                      onPressed: () {},
                      child: Text(
                        "ล็อกอิน",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ))),
              SizedBox(
                width: double.infinity,
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return FirstIntroScreen();
                    }));
                  },
                  label: Text(
                    "ผู้เข้าชม",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
