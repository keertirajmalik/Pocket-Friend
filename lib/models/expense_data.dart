import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:pocket_friend/models/expense.dart';

class ExpenseData extends ChangeNotifier {
  final List<String> _expenseTypes = ['Electricity', 'Food & Drinks', 'Home'];
  int id = 0;

  final List<Expense> _expenseAmount = [];

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

  int get nextId {
    return id++;
  }

  UnmodifiableListView<Expense> get expenses {
    return UnmodifiableListView(_expenseAmount);
  }

  void addExpense(String newExpenseAmount, String newAmount, String newDate) {
    if (newAmount != "") {
      _expenseAmount.add(Expense(
          id: nextId,
          expenseType: newExpenseAmount,
          amount: newAmount,
          date: newDate));
    }

    notifyListeners();
  }

  void deleteExpense(Expense expenseTile) {
    _expenseAmount.remove(expenseTile);
    notifyListeners();
  }

  void updateExpense(
      int id, String newExpenseAmount, String newAmount, String newDate) {
    if (newAmount != "") {
      print(_expenseAmount[ExpenseData().id]);
    }

    notifyListeners();
  }
}
