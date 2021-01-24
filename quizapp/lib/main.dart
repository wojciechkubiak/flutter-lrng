import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return QuizAppState();
  }
}

class QuizAppState extends State<QuizApp> {
  var qIndex = 0;
  
  void answerQuestion() {
    setState(() {
      qIndex++;
    });
    print(qIndex);
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
            Text(questions[qIndex]),
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
