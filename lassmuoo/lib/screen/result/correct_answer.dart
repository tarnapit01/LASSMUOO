// screen/result/correct_answer.dart
import 'package:flutter/material.dart';

class CorrectAnswer extends StatelessWidget {
  const CorrectAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Well Done!! Great Job!!",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              Text("Are you ready to the next game?",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ],
          )),
    );
  }
}
