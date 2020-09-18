// import 'package:one_choice/sheets/bottom_sheet.dart';
// import 'package:one_choice/sheets/bottom_sheet.dart';
// import 'package:one_choice/widgets/onechoicedata_agent.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/header.dart';
// import '../widgets/input_feed.dart';

class ChatPage extends StatelessWidget {
  ChatPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Header(),
          actions: <Widget>[
// TODO
// ...ACTIONS HERE...LIKE Sharing...
          ],
        ),
// TODO
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
// TODO
// BELOW search WIDGET A LIST OF 'Friends'
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