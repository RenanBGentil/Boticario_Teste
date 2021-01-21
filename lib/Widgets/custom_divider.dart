import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color:  Color.fromARGB(255, 231, 172, 194),
        width: 1000.0,
        height: 4.0,
        margin: const EdgeInsets.symmetric(vertical: 2.0)
    );
  }
}