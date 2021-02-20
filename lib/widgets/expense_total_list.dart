import 'package:flutter/material.dart';
import 'package:pocket_friend/models/expense_data.dart';

class ExpenseTotalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 10.0),
        Text(
          '17 Feb 2021',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        Spacer(),
        Text(
          ExpenseData().totalExpense,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.orange.shade400,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
