import 'package:boticario_teste/Widgets/custom_post.dart';
import 'package:flutter/material.dart';

class PostRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24.0, right: 24.0),
      decoration:  BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius:  BorderRadius.circular(8.0),
        color: Colors.white10,
      ),
      child: Card(
        elevation: 20.0,
        child: Container(
          margin: const EdgeInsets.only(top: 10.0, left: 20.0),
          constraints:  BoxConstraints.expand(),
          child: SingleChildScrollView(
            child: CustomPost(),
          ),
        ),
      ),
    );
  }
}