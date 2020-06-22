// import 'package:one_choice/sheets/bottom_sheet.dart';
// import 'package:one_choice/sheets/bottom_sheet.dart';
// import 'package:one_choice/widgets/onechoicedata_agent.dart';
import 'package:flutter/material.dart';
import '../widgets/bottomNavBar.dart';
import '../widgets/somethingGoodForm.dart';
import '../widgets/header.dart';
import '../widgets/feed_widget.dart';
import '../widgets/control_buttons.dart';

const TITLE = "One Choice";

class MyHomePage extends StatelessWidget {
  static final routeName = "/home";

  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(
        length: 4,
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
                SomethingGoodForm(),
                ControlButtons(),
                Feed(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavBar(),
        ),
    );
  }
}

// var ht = 80.0;