import 'package:flutter/material.dart';

class SomethingGoodInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          initialValue: null,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'One good thing...',
            hintText: 'The coffee is great at...',
          ),
          onSaved: (String value) {
            // code runs when User saves form
          },
          validator: (String value) {
            return value.contains('@') ? 'The @ char is not allowed.' : null;
          },
        ),
      ],
    );
  }
}