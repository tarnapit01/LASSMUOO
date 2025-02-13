// Intro/f_intro.dart
import 'package:flutter/material.dart';
import 'package:lassmuoo/Intro/s_intro.dart';

class FirstIntroScreen extends StatefulWidget {
  const FirstIntroScreen({super.key});

  @override
  State<FirstIntroScreen> createState() => _FirstIntroScreenState();
}

class _FirstIntroScreenState extends State<FirstIntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Center(
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage("lib/assets/images/Welcome_page 6.jpg"),
                        fit: BoxFit.cover)),
                padding: EdgeInsets.fromLTRB(12, 0, 12, 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "นี่คือ มู สิ่งมีชีวิตที่จากดาวที่ขาดแคลนทรัพยากร",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 550,
                      ),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.deepPurple,
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                            )
                          ]),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: 50,
                          width: 300,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurple),
                            onPressed: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return SecondScreen();
                              }));
                            },
                            icon: Text(
                              "ต่อไป",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            label:
                                Icon(Icons.arrow_forward, color: Colors.white),
                          )),
                    ]))));
  }
}
