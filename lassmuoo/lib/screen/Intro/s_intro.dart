// screen/Intro/s_intro.dart
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
                        "มูต้องการหาทรัพยากรสำคัญเพื่อช่วยฟื้นฟูดาวของตนเอง",
                        style: TextStyle(
                            fontFamily: "Mitr-Light",
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                          width: 600,
                          height: 550,
                          child: RiveAnimation.asset(
                              "lib/assets/rive/scence-3.riv"))
                    ]))));
  }
}
// class S extends StatelessWidget {
//   const S({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//         ),
//         body: Center(
//             child: Container(
//                 padding: EdgeInsets.fromLTRB(12, 0, 12, 8),
//                 child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Text(
//                         "เขาต้องการหาทรัพยากรสำคัญเพื่อช่วยฟื้นฟูดาวของตนเอง",
//                         style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white),
//                       ),
//                       SizedBox(
//                           width: 600,
//                           height: 550,
//                           child: RiveAnimation.asset(
//                               "lib/assets/rive/mark-4-model.riv"))
//                       // SizedBox(
//                       //   height: 510,
//                       // ),
//                       // Row(
//                       //     crossAxisAlignment: CrossAxisAlignment.center,
//                       //     mainAxisAlignment: MainAxisAlignment.center,
//                       //     children: [
//                       //       CircleAvatar(
//                       //         backgroundColor: Colors.white,
//                       //       ),
//                       //       SizedBox(width: 10),
//                       //       CircleAvatar(
//                       //         backgroundColor: Colors.deepPurple,
//                       //       ),
//                       //       SizedBox(width: 10),
//                       //       CircleAvatar(
//                       //         backgroundColor: Colors.white,
//                       //       )
//                       //     ]),
//                       // SizedBox(
//                       //   height: 20,
//                       // ),
//                       // SizedBox(
//                       //     height: 50,
//                       //     width: 300,
//                       //     child: ElevatedButton.icon(
//                       //       style: ElevatedButton.styleFrom(
//                       //           backgroundColor: Colors.deepPurple),
//                       //       onPressed: () {
//                       //         Navigator.of(context).push(_createRoute());
//                       //       },
//                       //       icon: Text(
//                       //         "ต่อไป",
//                       //         style: TextStyle(
//                       //             fontSize: 25,
//                       //             color: Colors.white,
//                       //             fontWeight: FontWeight.bold),
//                       //       ),
//                       //       label:
//                       //           Icon(Icons.arrow_forward, color: Colors.white),
//                       //     )),
//                     ]))));
//   }
// }

// Route _createRoute() {
//   return PageRouteBuilder(
//       pageBuilder: (context, animation, secondaryAnimetion) =>
//           const ThirdScreen(),
//       transitionDuration: Duration(seconds: 1),
//       transitionsBuilder: (context, animation, secondaryAnimetion, child) {
//         const begin = Offset(1.0, 0.0);
//         const end = Offset.zero;
//         const curve = Curves.ease;

//         var tween =
//             Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//         return SlideTransition(
//           position: animation.drive(tween),
//           child: child,
//         );
//       });
// }
