// solar_system/home_solar.dart
import 'package:flutter/material.dart';

class HomeSolar extends StatefulWidget {
  const HomeSolar({super.key});

  @override
  State<HomeSolar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeSolar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "ระบบสุริยะ",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        SizedBox(
          height: 250,
        ),
        Row(
          children: [
            SizedBox(width: 60),
            SizedBox(
                height: 60,
                width: 100,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen[400],
                        shape: CircleBorder(
                          side: BorderSide(
                              color: Color.fromARGB(255, 51, 105, 30),
                              width: 4.0),
                        )),
                    child: Text("1",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)))),
          ],
        ),
        SizedBox(
          child: Row(
            children: [
              SizedBox(
                width: 250,
              ),
              SizedBox(
                  height: 60,
                  width: 100,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen[400],
                          shape: CircleBorder(
                            side: BorderSide(
                                color: Color.fromARGB(255, 51, 105, 30),
                                width: 4.0),
                          )),
                      child: Text("2",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)))),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
            height: 60,
            width: 100,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen[400],
                    shape: CircleBorder(
                      side: BorderSide(
                          color: Color.fromARGB(255, 51, 105, 30), width: 4.0),
                    )),
                child: Text("Final",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)))),
        SizedBox(
          height: 50,
        ),
        Center(
            child: Text("เก็บ 3 ดาวเพื่อปลดล็อค",
                style: TextStyle(color: Colors.white))),
        Row(
          children: [
            Expanded(
              child: Divider(
                color: Colors.grey[300],
                thickness: 3,
                indent: 20,
                endIndent: 10,
              ),
            ),
            Icon(
              Icons.lock,
              color: Colors.grey[300],
              size: 20,
            ),
            Expanded(
              child: Divider(
                color: Colors.grey[300],
                thickness: 3,
                indent: 10,
                endIndent: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
