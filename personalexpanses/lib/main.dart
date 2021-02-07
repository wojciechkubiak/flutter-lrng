import 'package:flutter/material.dart';
import './widgets/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Expanses',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Expanses'),
              backgroundColor: Colors.green,
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                    color: Colors.green,
                    child: Container(
                      width: double.infinity,
                      child: Text(
                        'Chart',
                      ),
                    ),
                    elevation: 5,
                  ),
                  UserTransaction()
                ],
              ),
            )));
  }
}
