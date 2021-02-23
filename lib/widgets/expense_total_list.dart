import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pocket_friend/models/expense_data.dart';

class ExpenseTotalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Text(
            new DateFormat.yMMMMd()
                .format(new DateTime.now())
                // ignore: todo
                .toString(), //TODO: change the data format to 18 May 2020 from the May 18, 2020
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 20.0,
            ),
          ),
          Spacer(),
          Text(
            ExpenseData().totalExpense,
            style: TextStyle(
              fontSize: 20.0,
              color: Color(0xfff86c3f),
              fontWeight: FontWeight.bold,
              // height: 5.0,
            ),
          ),
        ],
      ),
    );
  }
}
