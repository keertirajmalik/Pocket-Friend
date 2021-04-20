import 'package:flutter/material.dart';
import 'package:pocket_friend/models/expense.dart';

class ExpenseData extends ChangeNotifier {
  final List<String> _expenseTypes = ['Electricity', 'Food & Drinks', 'Home'];

  List<Expense> expenseAmount = [
    Expense(expense: 'Electricity', amount: '270', date: '20 Apr 2021'),
    Expense(expense: 'Food & Drinks', amount: '470', date: '20 Apr 2021'),
  ];

  String get totalExpense {
    int totalExpense = 0;
    for (final expense in expenseAmount) {
      totalExpense += int.parse(expense.amount!);
    }
    return totalExpense.toString();
  }

  List<String> get expenseTypes {
    return _expenseTypes;
  }

  void addExpense(String newExpenseAmount, String newAmount, String newDate) {
    expenseAmount.add(
        Expense(expense: newExpenseAmount, amount: newAmount, date: newDate));
    notifyListeners();
  }
}
