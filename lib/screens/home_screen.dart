import 'package:flutter/material.dart';
import 'package:pocket_friend/widgets/expense_list.dart';
import 'package:pocket_friend/widgets/expense_total_list.dart';
import 'package:pocket_friend/widgets/icons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff27c791),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 40.0, bottom: 30.0, left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.drag_handle,
                      size: 40.0,
                    ),
                    const Spacer(),
                    const CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/profile_image.jpg'),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'My budget',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  '₹ 5432.00',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30.0),
                  ExpenseTotalList(),
                  ExpensesList(),
                  AppIcons(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
