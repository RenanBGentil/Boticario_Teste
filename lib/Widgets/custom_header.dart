import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(
        margin: EdgeInsets.only(bottom: 8.0),
        padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 0.0),
        height: 170.0,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 8.0,
              left: 20.0,
              child: Text("Boticário",
                style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}