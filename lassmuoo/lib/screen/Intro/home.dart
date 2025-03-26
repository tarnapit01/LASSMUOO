import 'package:flutter/material.dart';
import 'package:lassmuoo/screen/earth_structure/home_earth_structure.dart';
import 'package:lassmuoo/screen/solar_system/home_solar.dart';
import 'package:lassmuoo/navigation_bar/n_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // เก็บสถานะของ Tab ที่เลือก

  // เนื้อหาสำหรับแต่ละ Tab
  final List<Widget> _pages = [
    ListView(
      padding: EdgeInsets.all(8),
      physics: BouncingScrollPhysics(),
      children: [
        HomeSolar(),
        SizedBox(height: 20),
        HomeEarthStructure(),
      ],
    ),
    Center(
      child: Text(
        'Category Screen',
        style: TextStyle(fontSize: 24, color: Colors.white), // เปลี่ยนข้อความเป็นสีขาว
      ),
    ),
    Center(
      child: Text(
        'Chat Screen',
        style: TextStyle(fontSize: 24, color: Colors.white), // เปลี่ยนข้อความเป็นสีขาว
      ),
    ),
    Center(
      child: Text(
        'Profile Screen',
        style: TextStyle(fontSize: 24, color: Colors.white), // เปลี่ยนข้อความเป็นสีขาว
      ),
    ),
  ];

  // ฟังก์ชันสำหรับเปลี่ยน Tab
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.amberAccent),
              Text(
                " 0",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: _pages[_currentIndex], // แสดงเนื้อหาตาม Tab ที่เลือก
      ),
      bottomNavigationBar: NBar(
        initialIndex: _currentIndex,
        onItemTapped: _onTabTapped, // Callback เมื่อเปลี่ยน Tab
      ),
    );
  }
}