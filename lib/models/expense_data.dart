import 'package:pocket_friend/models/expense.dart';

class ExpenseData {
  List<Expense> expenseAmount = [
    Expense(expense: 'Electricity', amount: '270'),
    Expense(expense: 'Food', amount: '470'),
    Expense(expense: 'Home', amount: '570'),
  ];

  String get totalExpense {
    int totalExpense = 0;
    for (var expense in expenseAmount) {
      totalExpense += int.parse(expense.amount);
    }
    return totalExpense.toString();
  }
}
