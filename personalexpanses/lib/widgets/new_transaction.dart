import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final title = TextEditingController();
  final amount = TextEditingController();
  final Function newTransaction;

  NewTransaction(this.newTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: title,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amount,
            ),
            FlatButton(
              child: Text('Add transaction'),
              onPressed: () {
                newTransaction(title.text, amount.text);
              },
              textColor: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
