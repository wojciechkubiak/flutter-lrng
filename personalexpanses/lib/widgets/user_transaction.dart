import 'package:flutter/material.dart';
import './transaction_list.dart';
import './new_transaction.dart';
import './../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'New shoes', amount: 69.99, date: DateTime.now()),
    Transaction(id: 't2', title: 'Shirt', amount: 29.99, date: DateTime.now())
  ];

  void _addNew(String titleInput, String amountInput) {
    if (titleInput != null && amountInput != null) {
      setState(() {
        transactions.add(Transaction(
          id: DateTime.now().toString(),
          title: titleInput,
          amount: double.parse(amountInput),
          date: DateTime.now(),
        ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNew),
        TransactionList(transactions),
      ],
    );
  }
}
