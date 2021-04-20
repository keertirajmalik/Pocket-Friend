import 'package:flutter/material.dart';
import 'package:pocket_friend/models/expense_data.dart';
import 'package:pocket_friend/widgets/expense_tile.dart';
import 'package:provider/provider.dart';

class ExpensesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ExpenseData>(builder: (context, expenseData, child) {
      return Expanded(
        child: ListView.builder(
          padding: const EdgeInsets.all(10.0),
          itemBuilder: (context, index) {
            return ExpenseTile(
              expense: expenseData.expenseAmount[index].expense,
              amount: expenseData.expenseAmount[index].amount,
            );
          },
          itemCount: expenseData.expenseAmount.length,
        ),
      );
    });
  }
}
