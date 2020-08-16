// import 'package:one_choice/sheets/bottom_sheet.dart';
// import 'package:one_choice/sheets/bottom_sheet.dart';
// import 'package:one_choice/widgets/onechoicedata_agent.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/header.dart';
// import '../widgets/input_feed.dart';

class ChatPage extends StatelessWidget {
  static final routeName = "/chat";

  ChatPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Header(),
          actions: <Widget>[
// ...ACTIONS HERE...LIKE Sharing...
          ],
        ),
// MAY NEED TO EVENTUALLY CHANGE TO ListView() FOR SCROLLING          
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 24.0,
                    semanticLabel: 'A Search field to find Friends', 
                  ),
                  Text('A Search Field goes here'),
                ],
              ),
// BELOW search widget
// A LIST OF 'Friends'
              Text('A list of Friends goes here'),
              Text('A list of Friends goes here'),
              Text('A list of Friends goes here'),                            
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}

// var ht = 80.0;