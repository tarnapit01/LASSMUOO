// Intro/home.dart
import 'package:flutter/material.dart';
import 'package:lassmuoo/screen/earth_structure/home_earth_structure.dart';
import 'package:lassmuoo/screen/solar_system/home_solar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
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
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )
              ],
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(8),
          physics: BouncingScrollPhysics(),
          children: [
            HomeSolar(),
            SizedBox(
              height: 20,
            ),
            HomeEarthStructure()
          ],
        ));
  }
}
