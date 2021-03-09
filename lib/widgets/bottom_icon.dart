import 'package:flutter/material.dart';

class BottomIcon extends StatelessWidget {
  final IconData icon;
  const BottomIcon({
    Key? key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 35.0,
      color: Colors.white,
    );
  }
}