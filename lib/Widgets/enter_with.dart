import 'package:flutter/material.dart';

class EnterWith extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      margin: const EdgeInsets.only(
          left: 30.0, right: 30.0, top: 20.0),
      alignment: Alignment.center,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  border: Border.all(width: 0.25)),
            ),
          ),
          Text(
            "Entre Com:",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  border: Border.all(width: 0.25)),
            ),
          ),
        ],
      ),
    );
  }
}
