import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuizAppState();
  }
}

class QuizAppState extends State<QuizApp> {
  var _qIndex = 0;

  void answerQuestion() {
    setState(() {
      _qIndex++;
    });
    print(_qIndex);
  }

  @override
  Widget build(BuildContext ctx) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QuizApp'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(
              questions[_qIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => answerQuestion(),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => answerQuestion(),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => answerQuestion(),
            ),
          ],
        ),
      ),
    );
  }
}
