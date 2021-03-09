import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pocket_friend/models/expense_data.dart';

class ExpenseTotalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Text(
            DateFormat('dd MMM y').format(DateTime.now()),
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
              color: Color(0xfff86c3f),
              fontWeight: FontWeight.bold,
              // height: 5.0,
            ),
          ),
        ],
      ),
    );
  }
}
