import 'package:flutter/material.dart';

class ColorBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 231, 172, 194),
                Colors.white
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          )
      ),
    );
  }
}
