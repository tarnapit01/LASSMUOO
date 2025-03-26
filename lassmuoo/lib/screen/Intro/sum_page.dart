// screen/Intro/sum_page.dart
import 'package:flutter/material.dart';
import 'package:lassmuoo/screen/Intro/f_intro.dart';
import 'package:lassmuoo/screen/Intro/home.dart';
import 'package:lassmuoo/screen/Intro/s_intro.dart';
import 'package:lassmuoo/screen/Intro/t_intro.dart';

class SumPageScreen extends StatefulWidget {
  const SumPageScreen({super.key});

  @override
  State<SumPageScreen> createState() => _SumPageScreenState();
}

class _SumPageScreenState extends State<SumPageScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  int _activePage = 0;

  final List<Widget> _page = [
    const FirstIntroScreen(),
    const SecondScreen(),
    const ThirdScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _activePage = page;
                });
              },
              itemCount: _page.length,
              itemBuilder: (BuildContext context, int index) {
                return _page[index % _page.length];
              }),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: 100,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(
                      _page.length,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: InkWell(
                              onTap: () {
                                _pageController.animateToPage(index,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeIn);
                              },
                              child: CircleAvatar(
                                backgroundColor: _activePage == index
                                    ? Colors.deepPurple
                                    : Colors.white,
                              ),
                            ),
                          )))),
          // Add this Positioned widget for the button
          if (_activePage == 2)
            Positioned(
              bottom: 100, // Positions button above the page indicators
              left: 0,
              right: 0,
              child: Center(
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(_createRoute());
                    },
                    icon: Text(
                      "ต่อไป",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    label: Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const HomeScreen(),
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
