import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuizAppState();
  }
}

class QuizAppState extends State<QuizApp> {
  final questions = [
    // map syntax - other than Map()
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        // list
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 5},
        {'text': 'White', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Fish', 'score': 4},
        {'text': 'Dog', 'score': 8},
        {'text': 'Cat', 'score': 8},
        {'text': 'Hamster', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favourite sport?',
      'answers': [
        {'text': 'Basketball', 'score': 5},
        {'text': 'Tennis', 'score': 3},
        {'text': 'Curling', 'score': 100},
        {'text': 'Football', 'score': 3},
      ],
    },
  ];

  var qIndex = 0;
  var _score = 0;

  void resetQuiz() {
    setState(() {
      qIndex = 0;
      _score = 0;
    });
  }

  void answerQuestion(int score) {
    if (qIndex < questions.length) {
      _score += score;
      setState(() {
        qIndex++;
      });
      print(qIndex);
    }
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QuizApp'),
          centerTitle: true,
        ),
        body: qIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questions: questions,
                qIndex: qIndex)
            : Result(_score, resetQuiz),
      ),
    );
  }
}
