// Intro/home.dart
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center the Row horizontally
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amberAccent,
                ),
                Text(
                  " 0",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "----- ระบบสุริยะ -----",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 200,
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
                      child: Text("1",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)))),
              SizedBox(
                child: Row(
                  children: [
                    SizedBox(
                      width: 50,
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
                            child: Text("1",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)))),
                  ],
                ),
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
                      child: Text("1",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)))),
              Text("เก็บ 3 ดาวเพื่อปลดล็อค")
            ],
          ),
        ));
  }
}
