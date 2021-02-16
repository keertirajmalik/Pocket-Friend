import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff27c791),
      body: Container(
        padding:
            EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.menu,
                  size: 40.0,
                ),
                Spacer(),
                CircleAvatar(
                  backgroundImage: AssetImage('images/profile_image.jpg'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
