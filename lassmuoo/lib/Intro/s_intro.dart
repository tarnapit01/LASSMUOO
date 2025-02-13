import 'package:flutter/material.dart';
import 'package:lassmuoo/Intro/t_intro.dart';
import 'package:lassmuoo/Intro/f_intro.dart'; // นำเข้าไฟล์ FirstIntroScreen

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _alienAnimation;
  late Animation<Offset> _sunAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _alienAnimation = Tween<Offset>(
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
        pageBuilder: (context, animation, secondaryAnimation) => ThirdScreen(),
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

  void _navigateToPreviousScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => FirstIntroScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(-1.0, 0.0);
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
            top: 180, // ระบุตำแหน่งชัดเจน (ค่ามากขึ้น = อยู่ต่ำลง)
            right: 30, // ระบุตำแหน่งด้านขวา
            child: SlideTransition(
              position: _sunAnimation,
              child: Image.asset(
                "lib/assets/images/Sun.png",
                height: 180,
              ),
            ),
          ),

          // กำหนดตำแหน่งของเอเลี่ยน (Alien)
          Positioned(
            bottom: 200, // ระบุตำแหน่งจากด้านล่าง
            left: 60, // ระบุตำแหน่งจากด้านซ้าย
            child: SlideTransition(
              position: _alienAnimation,
              child: Image.asset(
                "lib/assets/images/Alien2.png",
                height: 150,
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
                    "เขาต้องการหาทรัพยากรสำคัญเพื่อช่วยฟื้นฟูดาวของตนเอง",
                    style: TextStyle(
                      fontSize: 30,
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
                      CircleAvatar(backgroundColor: Colors.deepPurple),
                      SizedBox(width: 10),
                      CircleAvatar(backgroundColor: Colors.white),
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