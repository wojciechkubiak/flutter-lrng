import 'package:flutter/material.dart';
import './transaction.dart';
import './transaction_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expanses',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'New shoes', amount: 69.99, date: DateTime.now()),
    Transaction(id: 't2', title: 'Shirt', amount: 29.99, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Expanses'), backgroundColor: Colors.green),
        body: Column(
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
            Column(
              children: transactions.map((tx) {
                return TransactionCard(
                    title: tx.title, amount: tx.amount, date: tx.date);
              }).toList(),
            )
          ],
        ));
  }
}
