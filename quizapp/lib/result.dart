import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function restartApp;

  Result(this.result, this.restartApp);

  String get resultPhrase {
    String resultText;

    if (result < 10) {
      resultText = 'Youre pretty normal';
    } else if (result > 10 && result < 30) {
      resultText = 'Could be worse';
    } else {
      resultText = 'You sick f***';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
              style: TextStyle(color: Colors.amber),
            ),
            onPressed: restartApp,
          )
        ],
      ),
    );
  }
}
