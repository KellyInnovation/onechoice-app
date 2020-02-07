// import 'package:one_choice/sheets/bottom_sheet.dart';
// import 'package:one_choice/sheets/bottom_sheet.dart';
// import 'package:one_choice/widgets/onechoicedata_agent.dart';
import 'package:flutter/material.dart';
import '../widgets/bottomNavBar.dart';
import '../widgets/somethingGoodInput.dart';
import '../widgets/topTabs.dart';
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
            actions: <Widget>[
              TopTabs(),
            ],
          ),
          body: Column(
            children: <Widget>[
              SomethingGoodInput(),
              ControlButtons(),
              Feed(),
            ],
          ),
          bottomNavigationBar: BottomNavBar(),
        ),
    );
  }
}

// var ht = 80.0;