import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocket_friend/models/expense_data.dart';

class ExpensesTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Row(
            children: [
              Text(
                ExpenseData().expenseAmount[0].expense,
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Spacer(),
              Text(
                ExpenseData().expenseAmount[0].amount,
                style: TextStyle(
                  color: Colors.orange.shade400,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          );
        },
        itemCount: 5,
      ),
    );
  }
}
