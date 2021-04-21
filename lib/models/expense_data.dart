import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:pocket_friend/models/expense.dart';

class ExpenseData extends ChangeNotifier {
  final List<String> _expenseTypes = ['Electricity', 'Food & Drinks', 'Home'];

  final List<Expense> _expenseAmount = [
    Expense(expense: 'Electricity', amount: '20', date: '20 Apr 2021'),
    Expense(expense: 'Food & Drinks', amount: '40', date: '20 Apr 2021'),
    Expense(expense: 'Home', amount: '70', date: '20 Apr 2021'),
  ];

  String get totalExpense {
    int totalExpense = 0;
    for (final expense in _expenseAmount) {
      totalExpense += int.parse(expense.amount!);
    }
    return totalExpense.toString();
  }

  List<String> get expenseTypes {
    return _expenseTypes;
  }

  UnmodifiableListView<Expense> get expenses {
    return UnmodifiableListView(_expenseAmount);
  }

  void addExpense(String newExpenseAmount, String newAmount, String newDate) {
    if (newAmount != "") {
      _expenseAmount.add(
          Expense(expense: newExpenseAmount, amount: newAmount, date: newDate));
    }

    notifyListeners();
  }
}
