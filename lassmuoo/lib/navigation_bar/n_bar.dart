// navigation_bar/n_bar.dart
import 'package:flutter/material.dart';


class NBar extends StatefulWidget {
  final int initialIndex; // Accept initial index
  const NBar({super.key, this.initialIndex = 0});

  @override
  State<NBar> createState() => _NBar();
}

class _NBar extends State<NBar> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex; // Use initial index from parent
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _widgetOptions = <Widget>[
    // WelcomeScreen(),
    // CategoryScreen(),
    // ChatScreen(),
    // UserProfile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.green,
          // sets the active color of the `BottomNavigationBar` if `Brightness` is light

          textTheme: Theme.of(context)
              .textTheme
              .copyWith(bodySmall: TextStyle(color: Colors.yellow[400])),
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.yellow[400],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
