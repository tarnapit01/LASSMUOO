import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final Widget nextScreen; // หน้าถัดไปที่เราจะไป

  const NextButton({Key? key, required this.nextScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 53,
      width: 257,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF525CEB),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(180),
          ),
        ),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => nextScreen),
          );
        },
        icon: const Text(
          "ต่อไป",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        label: const Icon(Icons.arrow_forward, color: Colors.white),
      ),
    );
  }
}
