import 'package:one_choice/sheets/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:one_choice/sheets/bottom_sheet.dart';
import 'package:one_choice/widgets/onechoicedata_agent.dart';

const TITLE = "One Choice";

class MyHomePage extends StatelessWidget {
  static final routeName = "/home";

  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ht = 80.0;
    return
      DefaultTabController(
        length: 4,
        child:
        Scaffold(
          body:
          TabBarView(
            children: [
              Container(),
              Container(),
              Container(),
              Container(),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            elevation: 0,
            color: Color(0xff344955),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              height: ht,
              child: Column(
                children: <Widget>[
                  MyBottomSheet(context),
                  TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.ac_unit), text: "One",),
                      Tab(icon: Icon(Icons.access_alarm), text: "Two",),
                      Tab(icon: Icon(Icons.account_balance_wallet), text: "Three",),
                      Tab(icon: Icon(Icons.account_balance), text: "Four",)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}


/*

 */