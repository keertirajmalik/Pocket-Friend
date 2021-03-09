import 'package:flutter/material.dart';
import 'package:pocket_friend/screens/add_transaction_screen.dart';

import 'bottom_icon.dart';

class AppIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color(0xff001827),
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomIcon(icon: Icons.account_balance_wallet_rounded),
            BottomIcon(icon: Icons.notifications_outlined),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AddTransactionScreen()),
                );
              },
              child: BottomIcon(icon: Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
