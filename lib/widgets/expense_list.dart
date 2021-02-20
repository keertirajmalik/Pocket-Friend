import 'package:flutter/material.dart';
import 'package:pocket_friend/models/expense_data.dart';
import 'package:pocket_friend/widgets/expense_tile.dart';

class ExpensesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Container(
            // padding: EdgeInsets.symmetric(vertical: 10.0),
            child: ExpenseTile(
              expense: ExpenseData().expenseAmount[index].expense,
              amount: ExpenseData().expenseAmount[index].amount,
            ),
          );
        },
        itemCount: ExpenseData().expenseAmount.length,
      ),
    );
  }
}
