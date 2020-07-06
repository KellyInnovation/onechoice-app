import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import './something_good_feed.dart';
import './something_good_input.dart';
import '../widgets/control_buttons.dart';

class InputFeed extends StatefulWidget {
  @override 
  _InputFeedState createState() => _InputFeedState();
}

class _InputFeedState extends State<InputFeed> {
  // final List<String> _tempList = [];
  final List<String> _tempList = [ 'initial value', ];
  
  void _addFeed(enteredFeed) {
    // print(enteredFeed);
    setState(() {
      _tempList.add(enteredFeed);
    });
    print(_tempList);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Material(
            elevation: 10,
            child: Container(
// THIS Widget CURRENTLY THROWS ERRORS
              child: SomethingGoodInput(_addFeed),
            ),
          ),
          Material(
            elevation: 10,
            child: Container(
              child: ControlButtons(),
            ),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SomethingGoodFeed(_tempList),
            ],
          ),
        ],
      ),
    );
  }
}