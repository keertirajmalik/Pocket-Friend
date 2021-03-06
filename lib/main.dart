import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pocket_friend/models/expense_data.dart';
import 'package:pocket_friend/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return ChangeNotifierProvider(
      create: (context) => ExpenseData(),
      child: MaterialApp(
        home: HomeScreen(),
        theme: ThemeData(fontFamily: 'NunitoSans'),
      ),
    );
  }
}
