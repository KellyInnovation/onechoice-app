import 'package:flutter/material.dart';
// import 'package:flutter/semantics.dart';

class SomethingGoodForm extends StatefulWidget {
  @override
  _SomethingGoodFormState createState() => new _SomethingGoodFormState();
}

class _SomethingGoodFormState extends State<SomethingGoodForm> {
  final _formKey = GlobalKey<FormState>();

  List<String> _oneGoodThing = [
    'yessir', 'here\'s some stuff', 'good things here, sukka',
  ];
  // List<Map<String, String>> _oneGoodThing;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('\"text field\" part of MyHomePage Body goes here'),
    );
  }
}