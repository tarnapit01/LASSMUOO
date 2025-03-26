// screen/solar_system/solor_system_quiz/no1/sum_solar_no1.dart
import 'package:flutter/material.dart';
import 'package:lassmuoo/screen/solar_system/solor_system_quiz/no1/solar_assignment_1.dart';
import 'package:lassmuoo/screen/solar_system/solor_system_quiz/no1/solar_quiz_1.dart';
import 'package:lassmuoo/screen/solar_system/solor_system_quiz/no1/solar_quiz_2.dart';
import 'package:lassmuoo/screen/solar_system/solor_system_quiz/no1/solar_quiz_3.dart';
import 'package:lassmuoo/screen/solar_system/solor_system_quiz/no1/solar_quiz_4.dart';

class SumSolarNo1Screen extends StatefulWidget {
  const SumSolarNo1Screen({super.key});

  @override
  State<SumSolarNo1Screen> createState() => _SumSolarNo1ScreenState();
}

class _SumSolarNo1ScreenState extends State<SumSolarNo1Screen> {
  final PageController _pageController = PageController(initialPage: 0);

  int _activePage = 0;

  final List<Widget> _page = [
    const SolarQuiz1Screen(),
    const SolarQuiz2Screen(),
    const SolarQuiz3Screen(),
    const SolarQuiz4Screen()
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
          if (_activePage == 3)
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
                      Navigator.of(context).push(_createRoute());
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
          const SolarAssignment1Screen(),
      transitionDuration: Duration(milliseconds: 100),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0); // Start from right
        const end = Offset.zero;
        const curve = Curves.easeIn;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      });
}
