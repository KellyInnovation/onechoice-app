import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

import './something_good_input.dart';
import './something_good_feed.dart';
import '../widgets/control_buttons.dart';

class InputFeed extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Material(
            elevation: 10,
            child: Container(
              child: SomethingGoodInput(),
            ),
          ),
          Material(
            elevation: 10,
            child: Container(
              child: ControlButtons(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
          SomethingGoodFeed(),

            ],
          ),
        ],
      ),
    );
  }
}