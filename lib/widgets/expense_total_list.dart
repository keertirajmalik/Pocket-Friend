import 'package:flutter/material.dart';

class ExpenseTotalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              '17 Feb 2021',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Spacer(),
            Text(
              '270',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.orange.shade400,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
