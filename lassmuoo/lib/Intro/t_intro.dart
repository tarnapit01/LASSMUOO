// Intro/t_intro.dart
import 'package:flutter/material.dart';
import 'package:lassmuoo/Intro/home.dart';
// import 'package:lassmuoo/Intro/intro.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

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
                            AssetImage("lib/assets/images/Welcome_page 7.jpg"),
                        fit: BoxFit.cover)),
                padding: EdgeInsets.fromLTRB(12, 0, 12, 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "มู ต้องออกเดินทางสำรวจจักรวาล และได้พบกับระบบสุริยะ ดังนั้น มูต้องเรียนรู้และเก็บข้อมูลเกี่ยวกับดวงอาทิตย์ ดาวเคราะห์ และโลก รวมถึงโครงสร้างของโลก",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 520,
                      ),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              backgroundColor: Colors.deepPurple,
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
                                return HomeScreen();
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
