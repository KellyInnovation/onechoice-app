// import 'package:one_choice/sheets/bottom_sheet.dart';
// import 'package:one_choice/sheets/bottom_sheet.dart';
// import 'package:one_choice/widgets/onechoicedata_agent.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';
// import '../widgets/control_buttons.dart';
// import '../widgets/something_good_feed.dart';
import '../widgets/header.dart';
import '../widgets/input_feed.dart';
// import '../widgets/something_good_input.dart';

// const TITLE = "One Choice";

class MyHomePage extends StatelessWidget {
  static final routeName = "/home";

  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Header(),
          actions: <Widget>[
// ...Actions here...
          ],
        ),
// MAY NEED TO EVENTUALLY CHANGE TO ListView() FOR SCROLLING          
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              InputFeed(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}

// var ht = 80.0;