import 'package:flutter/material.dart';
import 'text_content.dart';

class TextControl extends StatefulWidget {
  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  int _qIndex = 0;
  var textOptions = ['Siemka', 'Siemka2'];

  void changeAnswer() {
    setState(() {
      print(_qIndex);
      print(textOptions.length);

      if (_qIndex < textOptions.length - 1) {
        _qIndex += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        TextContent(textOptions[_qIndex]),
        RaisedButton(onPressed: () => changeAnswer(), child: Text('Change'))
      ],
    ));
  }
}
