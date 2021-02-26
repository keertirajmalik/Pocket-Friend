import 'package:flutter/material.dart';
import 'package:pocket_friend/screens/add_transaction_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddTransactionScreen(),
    );
  }
}
