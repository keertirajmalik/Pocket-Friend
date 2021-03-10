import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pocket_friend/models/expense_data.dart';

class AddTransactionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _todayDate = TextEditingController();
    _todayDate.text = DateFormat('dd MMM y').format(DateTime.now());
    return Scaffold(
      backgroundColor: Color(0xff27c791),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(30.0)),
          Expanded(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.close),
                      ),
                      Expanded(
                        child: Text(
                          'Add Transcation',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        color: Color(0xff27c791),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                        child: Text('INR',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0)),
                      ),
                      SizedBox(width: 5.0),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          cursorColor: Color(0xff27c791),
                          autofocus: true,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: DropdownButton<String>(
                          // value: dropdownValue,
                          hint: Text('Choose the expense type'),
                          icon: Icon(
                            Icons.keyboard_arrow_right,
                          ),
                          iconSize: 35.0,
                          elevation: 16,
                          isExpanded: true,
                          style: TextStyle(color: Color(0xff27c791)),
                          underline: Container(
                            height: 1.0,
                            color: Colors.grey,
                          ),
                          onChanged: (String? newValue) {
                            // setState(() {
                            //   dropdownValue = newValue;
                            // });
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
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.calendar_today_rounded,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.black,
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: TextField(
                          controller: _todayDate,
                          decoration: InputDecoration(),
                          cursorColor: Color(0xff27c791),
                          keyboardType: TextInputType.datetime,
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
