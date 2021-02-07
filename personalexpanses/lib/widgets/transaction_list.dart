import 'package:flutter/material.dart';
import './../models/transaction.dart';
import './transaction_card.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return TransactionCard(
              title: transactions[index].title,
              amount: transactions[index].amount,
              date: transactions[index].date);
        },
        itemCount: transactions.length,
      ),
    );
  }
}
