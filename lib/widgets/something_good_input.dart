import 'package:flutter/material.dart';
// import 'package:flutter/semantics.dart';

class SomethingGoodInput extends StatefulWidget {
  @override
  _SomethingGoodInputState createState() => new _SomethingGoodInputState();
}

class _SomethingGoodInputState extends State<SomethingGoodInput> {
  final _formKey = GlobalKey<FormState>();

  List<String> _oneGoodThing = [
    'yessir', 'here\'s some stuff', 'good things here, sukka',
  ];
  // List<Map<String, String>> _oneGoodThing;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('\"text field\" part of MyHomePage Body goes here'),
        ],
      ),
    );
  }
}