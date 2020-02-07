import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class Feed extends StatelessWidget {
  // DUMMY TEXT
  final String store = 'Third Street Stuff';
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget> [
          Text(store),
          Icon(
            Icons.more_horiz,
          ),
          Image.asset(
            'media/latte_cup.png',
            height: 300,
            width: 180,
          )
        ],
      ),
    );
  }
}