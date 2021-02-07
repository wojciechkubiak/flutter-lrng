import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  final String title;
  final double amount;
  final DateTime date;

  TransactionCard({this.title, this.amount, this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,
                    width: 2,
                  ),
                  // borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                padding: EdgeInsets.all(15),
                child: Text(
                  '\$$amount',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  padding: EdgeInsets.only(top: 5, right: 5, bottom: 5),
                ),
                Container(
                  child: Text(DateFormat.yMMMd().format(date),
                      style: TextStyle(fontSize: 14, color: Colors.black54)),
                  padding: EdgeInsets.only(top: 5, right: 5, bottom: 5),
                )
              ],
            ),
          ],
        ));
  }
}
