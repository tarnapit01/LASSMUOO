// query_function/quiz.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Future<void> fetchQuizData() async {
  CollectionReference quizCollection =
      FirebaseFirestore.instance.collection('QuizList');
  QuerySnapshot querySnapshot = await quizCollection.get();

  for (var doc in querySnapshot.docs) {
    String name = doc['name'];
    String answer = doc['answer'];
    print('Name: $name, Answer: $answer');
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Data'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            fetchQuizData();
          },
          child: Text('Fetch Quiz Data'),
        ),
      ),
    );
  }
}
