// import 'package:one_choice/sheets/bottom_sheet.dart';
import 'package:flutter/material.dart';

import '../bottomNavBar.dart';
import '../topTabs.dart';
// import 'package:one_choice/sheets/bottom_sheet.dart';
// import 'package:one_choice/widgets/onechoicedata_agent.dart';

const TITLE = "One Choice";

class MyHomePage extends StatelessWidget {
  static final routeName = "/home";

  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(
        length: 4,
        child:
        Scaffold(
          body: 
            TopTabs(),
          bottomNavigationBar: BottomNavBar(),
        ),
      );
  }
}

// var ht = 80.0;