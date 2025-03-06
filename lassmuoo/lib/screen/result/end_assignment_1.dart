import 'package:flutter/material.dart';
import 'package:lassmuoo/screen/Intro/home.dart';

class EndAssignment1Screen extends StatelessWidget {
  const EndAssignment1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 70, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Good ", // คำที่ต้องการเปลี่ยนสีและขนาด
                    style: TextStyle(
                      color: Color(0xFF01FF1F), // เปลี่ยนสีเฉพาะคำว่า "มู"
                      fontSize: 36, // เปลี่ยนขนาดเฉพาะคำว่า "มู"
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'jobs guys !! ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '\n\n        Well done',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '\n     you did ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Great ',
                    style: TextStyle(
                      color: Color(0xFF01FF1F),
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              maxLines: 30,
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 229,
              width: 236,
              child: Image.asset('lib/assets/images/planets/Earth.png'),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                  width: 120,
                  child: Card(
                    color: Color(0xFF00ABD6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Time",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 16),
                        ),
                        Text(
                          "01 : 20 min",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                SizedBox(
                  height: 80,
                  width: 120,
                  child: Card(
                    color: Color(0xFF00ABD6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Score",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 16),
                        ),
                        Text(
                          "100 %",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            SizedBox(
              height: 53,
              width: 257,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF525CEB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(180),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }));
                },
                child: const Text(
                  "เสร็จสิ้น",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
