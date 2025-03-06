// import 'dart:math' as math;
// import 'package:flutter/material.dart';

// class AnimatedPlanetWidget extends StatefulWidget {
//   final String imagePath;
//   final int rotationSpeed;

//   const AnimatedPlanetWidget({
//     Key? key,
//     required this.imagePath,
//     this.rotationSpeed = 60,
//   }) : super(key: key);

//   @override
//   State<AnimatedPlanetWidget> createState() => _AnimatedPlanetWidgetState();
// }

// class _AnimatedPlanetWidgetState extends State<AnimatedPlanetWidget>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _rotationController;
//   late AnimationController _pulseController;
//   late AnimationController _orbitController;

//   @override
//   void initState() {
//     super.initState();
//     _initAnimations();
//   }

//   void _initAnimations() {
//     _rotationController = AnimationController(
//       duration: Duration(seconds: widget.rotationSpeed),
//       vsync: this,
//     )..repeat();

//     _pulseController = AnimationController(
//       duration: const Duration(seconds: 4),
//       vsync: this,
//     )..repeat(reverse: true);

//     _orbitController = AnimationController(
//       duration: const Duration(seconds: 20),
//       vsync: this,
//     )..repeat();
//   }

//   @override
//   void dispose() {
//     _disposeAnimations();
//     super.dispose();
//   }

//   void _disposeAnimations() {
//     _rotationController.dispose();
//     _pulseController.dispose();
//     _orbitController.dispose();
//   }

//   Widget _buildAnimatedPlanet() {
//     return AnimatedBuilder(
//       animation: Listenable.merge([
//         _rotationController,
//         _pulseController,
//         _orbitController,
//       ]),
//       builder: (context, child) {
//         final orbitValue = _orbitController.value;
//         final dx = math.sin(orbitValue * 2 * math.pi) * 10;
//         final dy = math.cos(orbitValue * 2 * math.pi) * 5;

//         final scale = 1.0 + (_pulseController.value * 0.05);

//         return Transform.translate(
//           offset: Offset(dx, dy),
//           child: Transform.rotate(
//             angle: _rotationController.value * 2 * math.pi,
//             child: Transform.scale(
//               scale: scale,
//               child: Image.asset(
//                 widget.imagePath,
//                 width: 300,
//                 height: 300,
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: _buildAnimatedPlanet(),
//       ),
//     );
//   }
// }
