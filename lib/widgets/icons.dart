import 'package:flutter/material.dart';
import 'package:pocket_friend/models/expense_data.dart';
import 'package:pocket_friend/screens/add_transaction_screen.dart';

import 'bottom_icon.dart';

class AppIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
          color: Color(0xff001827),
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const BottomIcon(icon: Icons.account_balance_wallet_rounded),
            const BottomIcon(icon: Icons.notifications_outlined),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddTransactionScreen(
                      transactionAmount: '',
                      transactionType: ExpenseData().expenseTypes.first,
                      transactionMode: 'new',
                      transactionId: ExpenseData().transactionId,
                    ),
                  ),
                );
              },
              child: const BottomIcon(icon: Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
