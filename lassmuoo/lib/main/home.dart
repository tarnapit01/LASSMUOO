import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.amberAccent),
              Text(
                " 0",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              "lib/assets/images/Empty_page.jpg",
              fit: BoxFit.cover,
            ),
          ),

          // Scrollable content
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.05), // Dynamic height
                  // Title
                  Text(
                    "----- ระบบสุริยะ -----",
                    style: TextStyle(
                      fontSize: screenWidth * 0.08, // Responsive font size
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05), // Dynamic height

                  // Sun
                  Image.asset(
                    "lib/assets/images/Sun.png",
                    height: screenHeight *
                        0.2, // Adjust height relative to screen size
                  ),
                  SizedBox(height: screenHeight * 0.05),

                  // Planets
                  _planetRow("lib/assets/images/Mercury.png", "1", true),
                  _planetRow("lib/assets/images/Venus.png", "2", false),
                  _planetRow("lib/assets/images/Earth.png", "3", false),
                  _planetRow("lib/assets/images/Mars.png", "4", false),
                  _planetRow("lib/assets/images/Jupiter.png", "5", false),
                  _planetRow("lib/assets/images/Saturn.png", "6", false),
                  _planetRow("lib/assets/images/Uranus.png", "7", false),
                  _planetRow("lib/assets/images/Neptune.png", "8", false),

                  SizedBox(height: screenHeight * 0.05), // Dynamic height
                  // Locked text
                  Text(
                    "เก็บ 8 ดาวเพื่อปลดล็อค",
                    style: TextStyle(
                      fontSize: screenWidth * 0.05, // Responsive font size
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.1), // Dynamic height
                ],
              ),
            ),
          ),

          // Bottom Navigation Icons
          Positioned(
            bottom: screenHeight * 0.02, // Responsive bottom margin
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                _bottomIcon(Icons.home, "H"),
                Spacer(),
                _bottomIcon(Icons.help, "Q"),
                Spacer(),
                _bottomIcon(Icons.settings, "S"),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _planetRow(String imagePath, String label, bool unlocked) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: _planetButton(imagePath, label, unlocked),
    );
  }

  Widget _planetButton(String imagePath, String label, bool unlocked) {
    return SizedBox(
      width: MediaQuery.of(context).size.width *
          0.8, // Adjust the width to fit the screen
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                imagePath,
                height: MediaQuery.of(context).size.height *
                    0.1, // Adjust the height of planet images
              ),
              if (!unlocked)
                Icon(
                  Icons.lock,
                  color: Colors.white,
                  size: 50,
                ),
              if (unlocked)
                Text(
                  label,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width *
                        0.05, // Adjust font size dynamically
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
            ],
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }

  Widget _bottomIcon(IconData icon, String label) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 40,
        ),
        Text(
          label,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
