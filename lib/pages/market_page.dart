// import 'package:one_choice/sheets/bottom_sheet.dart';
// import 'package:one_choice/sheets/bottom_sheet.dart';
// import 'package:one_choice/widgets/onechoicedata_agent.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/header.dart';
// import '../widgets/input_feed.dart';

class MarketPage extends StatelessWidget {
  MarketPage({Key key}) : super(key: key);

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
              // InputFeed(),
              Text('This is the Market Page!'),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}

// var ht = 80.0;