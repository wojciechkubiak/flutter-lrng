import 'package:flutter/material.dart';

class TextContent extends StatelessWidget {
  final String textContent;

  TextContent(this.textContent);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(textContent));
  }
}
