import 'package:pocket_friend/models/expense.dart';

class ExpenseData {
  final List<String> _expenseTypes = ['Electricity', 'Food & Drinks', 'Home'];

  List<Expense> expenseAmount = [
    Expense(expense: 'Electricity', amount: '270'),
    Expense(expense: 'Food & Drinks', amount: '470'),
    Expense(expense: 'Home', amount: '570'),
    Expense(expense: 'Home', amount: '570'),
    Expense(expense: 'Home', amount: '570'),
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
}
