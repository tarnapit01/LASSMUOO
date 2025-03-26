// screen/Intro/intro.dart
import 'package:flutter/material.dart';
import 'package:lassmuoo/screen/Intro/sum_page.dart';
import 'package:rive/rive.dart';
import 'package:lassmuoo/screen/Intro/f_intro.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(0, 0.1),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => FirstIntroScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(12, 0, 12, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "LASSMUOO",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    fontFamily: "Mitr-bold",
                    color: Color.fromARGB(255, 34, 209, 136)),
              ),
              SizedBox(height: 20),
              Text(
                "เรียนรู้ดาราศาสตร์ \nกับ มู ผู้รอบรู้",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Mitr-Light",
                    fontSize: 37,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: 300,
                  height: 300,
                  child:
                      RiveAnimation.asset("lib/assets/rive/mark-4-model.riv")),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple),
                      onPressed: () {
                        Navigator.of(context).push(_createRoute());
                      },
                      child: Text(
                        "ล็อกอิน",
                        style: TextStyle(
                            fontFamily: "Mitr-Light",
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ))),
              SizedBox(
                width: double.infinity,
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(_createRoute());
                  },
                  icon: Icon(Icons.arrow_forward, color: Colors.white),
                  label: Text(
                    "ผู้เข้าชม",
                    style: TextStyle(
                        fontFamily: "Mitr-Light",
                        fontSize: 17,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const SumPageScreen(),
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
