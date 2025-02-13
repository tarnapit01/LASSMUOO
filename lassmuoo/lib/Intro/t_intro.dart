import 'package:flutter/material.dart';
import 'package:lassmuoo/main/home.dart';
import 'package:lassmuoo/Intro/s_intro.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _sunAnimation;
  late Animation<Offset> _mercuryAnimation;
  late Animation<Offset> _venusAnimation;
  late Animation<Offset> _earthAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _mercuryAnimation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(0, 0.1),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _venusAnimation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(0, -0.1),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _earthAnimation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(0, 0.1),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _sunAnimation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(0, -0.1),
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
        pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
  }

  void _navigateToPreviousScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => SecondScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(-1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

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
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            _navigateToPreviousScreen(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/images/Empty_page.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // กำหนดตำแหน่งของดวงอาทิตย์ (Sun)
          Positioned(
            top: 300, // ระบุตำแหน่งชัดเจน (ค่ามากขึ้น = อยู่ต่ำลง)
            right: 110, // ระบุตำแหน่งด้านขวา
            child: SlideTransition(
              position: _sunAnimation,
              child: Image.asset(
                "lib/assets/images/Sun.png",
                height: 180,
              ),
            ),
          ),

          // กำหนดตำแหน่งของดาวพุธ (Mercury)
          Positioned(
            top: 230, // ระบุตำแหน่งจากด้านบน
            right: 260, // ระบุตำแหน่งจากด้านขวา
            child: SlideTransition(
              position: _mercuryAnimation,
              child: Image.asset(
                "lib/assets/images/Mercury.png",
                height: 50,
              ),
            ),
          ),

          // กำหนดตำแหน่งของดาวศุกร์ (Venus)
          Positioned(
            top: 400, // ระบุตำแหน่งจากด้านบน
            right: 30, // ระบุตำแหน่งจากด้านขวา
            child: SlideTransition(
              position: _venusAnimation,
              child: Image.asset(
                "lib/assets/images/Venus.png",
                height: 70,
              ),
            ),
          ),

          // กำหนดตำแหน่งของดาวโลก (Earth)
          Positioned(
            top: 500, // ระบุตำแหน่งจากด้านบน
            right: 250, // ระบุตำแหน่งจากด้านขวา
            child: SlideTransition(
              position: _earthAnimation,
              child: Image.asset(
                "lib/assets/images/Earth.png",
                height: 80,
              ),
            ),
          ),

          // เนื้อหาด้านล่าง
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(12, 0, 12, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  Text(
                    "มู ต้องออกเดินทางสำรวจจักรวาล และได้พบกับระบบสุริยะ ดังนั้น มูต้องเรียนรู้และเก็บข้อมูลเกี่ยวกับดวงอาทิตย์ ดาวเคราะห์ และโลก รวมถึงโครงสร้างของโลก",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(backgroundColor: Colors.white),
                      SizedBox(width: 10),
                      CircleAvatar(backgroundColor: Colors.white),
                      SizedBox(width: 10),
                      CircleAvatar(backgroundColor: Colors.deepPurple),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 140,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[700],
                          ),
                          onPressed: () {
                            _navigateToPreviousScreen(context);
                          },
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                          label: Text(
                            "ย้อนกลับ",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 140,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                          ),
                          onPressed: () {
                            _navigateToNextScreen(context);
                          },
                          icon: Text(
                            "ต่อไป",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          label: Icon(Icons.arrow_forward, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
