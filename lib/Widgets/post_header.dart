import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child:Image.asset("assets/pessoa.png", height: 100.0, width: 100.0,),
        ),
        const SizedBox(width: 20.0,),
        Text("Boticário", style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.0
        ),)
      ],
    );
  }
}
