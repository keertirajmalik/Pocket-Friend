import 'package:flutter/material.dart';

class ExpenseTile extends StatelessWidget {
  const ExpenseTile({this.expense, this.amount});

  final String? expense;
  final String? amount;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/$expense.png'),
          radius: 15.0,
        ),
        const SizedBox(width: 10.0),
        Text(
          expense!,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
        const Spacer(),
        Text(
          amount!,
          style: const TextStyle(
            color: Color(0xfff9906b),
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ],
    );
  }
}
