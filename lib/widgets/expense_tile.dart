import 'package:flutter/material.dart';

class ExpenseTile extends StatelessWidget {
  ExpenseTile({this.expense, this.amount});

  final String? expense;
  final String? amount;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/$expense.png'),
            radius: 15.0,
          ),
          SizedBox(width: 10.0),
          Text(
            expense!,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
          Spacer(),
          Text(
            amount!,
            style: TextStyle(
              color: Color(0xfff9906b),
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}
