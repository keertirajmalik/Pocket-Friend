import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:pocket_friend/models/expense.dart';

class ExpenseData extends ChangeNotifier {
  final List<String> _expenseTypes = ['Electricity', 'Food & Drinks', 'Home'];
  int id = 0;

  final Map<int, Expense> _expenseAmount = {};

  String get totalExpense {
    int totalExpense = 0;
    for (final expense in _expenseAmount.values) {
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

  UnmodifiableMapView<int, Expense> get expenses {
    return UnmodifiableMapView(_expenseAmount);
  }

  void addExpense(String newExpenseAmount, String newAmount, String newDate) {
    if (newAmount != "") {
      _expenseAmount[nextId] = Expense(
          expenseType: newExpenseAmount, amount: newAmount, date: newDate);
    }
    notifyListeners();
  }

  void deleteExpense(int transactionId) {
    _expenseAmount.remove(transactionId);
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
