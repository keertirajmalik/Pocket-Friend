import 'package:flutter/material.dart';

class ExpenseTile extends StatelessWidget {
  ExpenseTile({this.expense, this.amount});

  final String expense;
  final String amount;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            expense,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Text(
            amount,
            style: TextStyle(
              color: Colors.orange.shade400,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 45.0)
        ],
      ),
    );
  }
}
