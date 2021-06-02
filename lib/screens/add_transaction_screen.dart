import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pocket_friend/models/expense_data.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class AddTransactionScreen extends StatefulWidget {
  @override
  _AddTransactionScreenState createState() => _AddTransactionScreenState();
  String transactionAmount;
  String transactionType;
  final String transactionMode;
  final int transactionId;

  AddTransactionScreen(
      {required this.transactionAmount,
      required this.transactionType,
      required this.transactionMode,
      required this.transactionId});
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  DateTime selectedDate = DateTime.now();
  String _todayDate = DateFormat('dd MMM y').format(DateTime.now());

  String get pageTitle {
    if (widget.transactionMode.contains('new')) {
      return 'Add Transaction';
    } else {
      return 'Update Transaction';
    }
  }

  String get buttonText {
    if (widget.transactionMode.contains('new')) {
      return 'Save';
    } else {
      return 'Update';
    }
  }

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController(text: widget.transactionAmount);

    return Scaffold(
      backgroundColor: const Color(0xff27c791),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.all(30.0)),
          Expanded(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
              ),
              child: Column(
                children: [
                  Text(
                    pageTitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                            controller: myController,
                            decoration: InputDecoration(
                              prefix: MaterialButton(
                                onPressed: () {},
                                color: const Color(0xff27c791),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0)),
                                child: const Text('INR',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18.0)),
                              ),
                              border: InputBorder.none,
                            ),
                            cursorColor: const Color(0xff27c791),
                            autofocus: true,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold),
                            onChanged: (amount) {
                              widget.transactionAmount = amount;
                            }),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage(
                            'assets/images/${widget.transactionType}.png'),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: DropdownButton<String>(
                          value: widget.transactionType,
                          hint: const Text('Choose the expense type'),
                          icon: const Icon(
                            Icons.keyboard_arrow_right,
                          ),
                          iconSize: 35.0,
                          elevation: 16,
                          isExpanded: true,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400),
                          underline: Container(
                            height: 1.0,
                            color: Colors.grey,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              widget.transactionType = newValue!;
                            });
                          },
                          items: ExpenseData()
                              .expenseTypes
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  ListTile(
                    onTap: () => _selectDate(context),
                    contentPadding: EdgeInsets.zero,
                    visualDensity: const VisualDensity(vertical: -4),
                    leading: const CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.calendar_today_rounded,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      _todayDate,
                      style: const TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Container(
                      height: 1.0,
                      width: 130.0,
                      color: Colors.grey,
                    ),
                    trailing: const Icon(
                      Icons.calendar_today_rounded,
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Cancel'),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                if (widget.transactionMode == 'new') {
                                  Provider.of<ExpenseData>(context,
                                          listen: false)
                                      .addExpense(
                                    widget.transactionType,
                                    widget.transactionAmount,
                                    _todayDate,
                                  );
                                  Navigator.pop(context);
                                } else if (widget.transactionMode == 'edit') {
                                  Provider.of<ExpenseData>(context,
                                          listen: false)
                                      .updateExpense(
                                          widget.transactionId,
                                          widget.transactionType,
                                          widget.transactionAmount,
                                          _todayDate);
                                  Navigator.pop(context);
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green, // background
                              ),
                              child: Text(buttonText),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2000),
          lastDate: DateTime(2025),
        ) ??
        DateTime.now();
    if (picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _todayDate = DateFormat('dd MMM y').format(selectedDate);
      });
    }
  }
}
