import 'package:flutter/material.dart';

class NBar extends StatefulWidget {
  final int initialIndex; // รับค่าเริ่มต้นของ Tab
  final Function(int)? onItemTapped; // Callback สำหรับการเปลี่ยน Tab
  const NBar({super.key, this.initialIndex = 0, this.onItemTapped});

  @override
  State<NBar> createState() => _NBar();
}

class _NBar extends State<NBar> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex; // ใช้ค่าเริ่มต้นจาก parent
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (widget.onItemTapped != null) {
      widget.onItemTapped!(index); // เรียก callback เมื่อเปลี่ยน Tab
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blueGrey, // เปลี่ยนพื้นหลังเป็นสีขาว
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          activeIcon: Icon(Icons.home, color: Colors.blue), // สีเมื่อถูกเลือก
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.quiz),
          label: 'Quiz',
          activeIcon: Icon(Icons.quiz, color: Colors.blue), // สีเมื่อถูกเลือก
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chat',
          activeIcon: Icon(Icons.chat, color: Colors.blue), // สีเมื่อถูกเลือก
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Profile',
          activeIcon: Icon(Icons.account_circle, color: Colors.blue), // สีเมื่อถูกเลือก
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue, // สีของไอคอนที่ถูกเลือก
      unselectedItemColor: Colors.grey, // สีของไอคอนที่ไม่ได้ถูกเลือก
      onTap: _onItemTapped,
    );
  }
}