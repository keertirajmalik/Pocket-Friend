import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:pocket_friend/models/expense_data.dart';
import 'package:pocket_friend/screens/add_transaction_screen.dart';
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
            final expense = expenseData.expenses.values.elementAt(index);
            return Slidable(
                actionPane: const SlidableDrawerActionPane(),
                actions: <Widget>[
                  IconSlideAction(
                    caption: 'Edit',
                    color: Colors.blue,
                    icon: Icons.edit_outlined,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddTransactionScreen(
                            transactionAmount: expense.amount!,
                            transactionType: expense.expenseType!,
                            transactionMode: 'edit',
                            transactionId:
                                expenseData.expenses.keys.elementAt(index),
                          ),
                        ),
                      );
                    },
                  ),
                ],
                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: 'Delete',
                    color: Colors.red,
                    icon: Icons.delete,
                    onTap: () => {
                      expenseData.deleteExpense(
                        expenseData.expenses.keys.elementAt(index),
                      ),
                    },
                  ),
                ],
                child: ExpenseTile(
                  expense: expense.expenseType,
                  amount: expense.amount,
                ));
          },
          itemCount: expenseData.expenses.length,
        ),
      );
    });
  }
}
