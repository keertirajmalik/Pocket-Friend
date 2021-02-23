import 'package:flutter/material.dart';

class AppIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18.0),
      decoration: BoxDecoration(
        color: Color(0xff001827),
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.account_balance_wallet_rounded,
            size: 40.0,
            color: Colors.white,
          ),
          SizedBox(width: 20.0),
          Icon(
            Icons.notifications_outlined,
            size: 40.0,
            color: Colors.white,
          ),
          SizedBox(width: 20.0),
          Icon(
            Icons.add,
            size: 40.0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
