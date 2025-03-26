// screen/Intro/intro.dart
import 'package:flutter/material.dart';

import 'package:lassmuoo/screen/Intro/sum_page.dart';
import 'package:rive/rive.dart';

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
                    fontFamily: "Mitr-bold",
                    color: Color.fromARGB(255, 34, 209, 136)),
              ),
              SizedBox(height: 20),
              Text(
                "เรียนรู้ดาราศาสตร์ \nกับ มู ผู้รอบรู้",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Mitr-Light",
                    fontSize: 37,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: 300,
                  height: 300,
                  child:
                      RiveAnimation.asset("lib/assets/rive/mark-4-model.riv")),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple),
                      onPressed: () {
                        Navigator.of(context).push(_createRoute());
                      },
                      child: Text(
                        "ล็อกอิน",
                        style: TextStyle(
                            fontFamily: "Mitr-Light",
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ))),
              SizedBox(
                width: double.infinity,
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(_createRoute());
                  },
                  label: Text(
                    "ผู้เข้าชม",
                    style: TextStyle(
                        fontFamily: "Mitr-Light",
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

Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const SumPageScreen(),
      transitionDuration: Duration(milliseconds: 500),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Create a curved animation for smoother fading
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: Curves.easeIn,
        );

        return FadeTransition(
          opacity: curvedAnimation,
          child: child,
        );
      });
}
