import 'package:flutter/material.dart';
import 'package:one_choice/sheets/bottom_sheet.dart';

class BottomNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double ht = 80.0;
    double buffer = 10.0;

    return DefaultTabController(
      length: 4,
      child: Container(
        child: BottomAppBar(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: buffer),
            margin: EdgeInsets.only(top: buffer),
            height: ht,
            child: Column(
              children: <Widget>[
                MyBottomSheet(context),
                TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.home,
                        color: Colors.purple[800],
                        size: 40.0,
                      ),
                      text: "Home",
                    ),
                    Tab(
                      icon: Icon(
                        Icons.chat_bubble,
                        color: Colors.red[800],
                        size: 40.0,
                      ), 
                      text: "Chat",
                    ),
                    Tab(
                      icon: Icon(
                        Icons.shop,
                        color: Colors.green[800],
                        size: 40.0,
                      ), 
                      text: "Market",
                    ),
                    Tab(
                      icon: Icon(
                        Icons.person,
                        color: Colors.blue[800],
                        size: 40.0,
                      ), 
                      text: "Profile",
                    ),
                  ],
                ),
              ],
            ),
          ),
          // color: set in main.dart
          elevation: 0,
        ),
      ),
    );
  }
}