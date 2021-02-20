import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pocket_friend/models/expense_data.dart';

class ExpenseTotalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          new DateFormat.yMMMMd()
              .format(new DateTime.now())
              .toString(), //TODO change the data format to 18 May 2020 from the May 18, 2020
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
