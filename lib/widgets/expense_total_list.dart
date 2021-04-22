import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pocket_friend/models/expense_data.dart';
import 'package:provider/provider.dart';

class ExpenseTotalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Text(
            DateFormat('dd MMM y').format(DateTime.now()),
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          const Spacer(),
          Consumer<ExpenseData>(builder: (context, expenseData, child) {
            return Text(
              expenseData.totalExpense,
              style: const TextStyle(
                fontSize: 20.0,
                color: Color(0xfff86c3f),
                fontWeight: FontWeight.bold,
                // height: 5.0,
              ),
            );
          }),
        ],
      ),
    );
  }
}
