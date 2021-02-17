import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocket_friend/widgets/expense_tile.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              '17 Feb 2021',
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            Spacer(),
            Text(
              '270',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.orange.shade400,
                  fontWeight: FontWeight.w900),
            ),
          ],
        ),
        SizedBox(height: 10.0),
        ExpensesTile(),
      ],
    );
  }
}
