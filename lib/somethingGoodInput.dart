import 'package:flutter/material.dart';

class SomethingGoodInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'One good thing...',
          ),
          // textAlign: TextAlign.start,
          // textCapitalization: TextCapitalization.words,
        ),
      ],
    );
  }
}