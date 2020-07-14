import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import './something_good_feed.dart';
import './something_good_input.dart';
import '../widgets/control_buttons.dart';
import '../models/posts.dart';

class InputFeed extends StatefulWidget {
  @override 
  _InputFeedState createState() => _InputFeedState();
}

class _InputFeedState extends State<InputFeed> {
  final List<Map<String, dynamic>> _allPosts = [];
  
// _addFeed NEEDS TO MANIPULATE user AND posts MODELS
  void _addFeed(enteredPost) {
    setState(() {
      _allPosts.add(enteredPost);   
    });
    print(_allPosts);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Material(
            elevation: 10,
            child: Container(
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
            children: <Widget>[
              // SomethingGoodFeed(_allPosts),
            ],
          ),
        ],
      ),
    );
  }
}