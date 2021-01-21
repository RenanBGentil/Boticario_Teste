import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {

  final IconData icon;
  final String text;


  const DrawerTile({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 60.0,
          child: Row(
            children: <Widget>[
              Icon(icon,
                size: 32.0,
                color: Colors.black,
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(text,
                style: TextStyle(fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}