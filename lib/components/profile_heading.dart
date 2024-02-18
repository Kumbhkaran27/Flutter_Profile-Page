import 'package:flutter/material.dart';

class ProfileHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: const Text(
        'MINGLE',
        style: TextStyle(
          fontSize: 36.0,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
    );
  }
}
