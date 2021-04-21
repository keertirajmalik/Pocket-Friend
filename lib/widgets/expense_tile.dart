import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ExpenseTile extends StatelessWidget {
  const ExpenseTile({this.expense, this.amount});

  final String? expense;
  final String? amount;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Slidable(
            actionPane: const SlidableDrawerActionPane(),
            actions: <Widget>[
              IconSlideAction(
                caption: 'Edit',
                color: Colors.blue,
                icon: Icons.edit_outlined,
                onTap: () => {},
              ),
            ],
            secondaryActions: <Widget>[
              IconSlideAction(
                caption: 'Delete',
                color: Colors.red,
                icon: Icons.delete,
                onTap: () => {},
              ),
            ],
            child: Container(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/$expense.png'),
                  radius: 15.0,
                ),
                title: Text(
                  expense!,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                trailing: Text(
                  amount!,
                  style: const TextStyle(
                    color: Color(0xfff9906b),
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
