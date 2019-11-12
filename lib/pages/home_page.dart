import 'package:one_choice/sheets/bottom_sheet.dart';
import 'package:flutter/material.dart';

import '../bottomNavBar.dart';
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
              Container(
                child:Padding(
                  padding: const EdgeInsets.only(top:40.0),
                  child: Text("Market"),
                ),
              ),
              Container(
                child:Padding(
                  padding: const EdgeInsets.only(top:40.0),
                  child: Text("Chat"),
                ),
              ),
              Container(
                child:Padding(
                  padding: const EdgeInsets.only(top:40.0),
                  child: Text("Home"),
                ),
              ),
              Container(child:Padding(
                padding: const EdgeInsets.only(top:40.0),
                child: Text("Profile"),
              ),
              ),
            ],
          ),
// CONTENT
          bottomNavigationBar: BottomNavBar(),
          // bottomNavigationBar: BottomAppBar(
          //   elevation: 0,
          //   color: Color(0xff344955),
          //   child: Container(
          //     padding: EdgeInsets.symmetric(horizontal: 10.0),
          //     height: ht,
          //     child: Column(
          //       children: <Widget>[
          //         MyBottomSheet(context),
          //         TabBar(
          //           tabs: [
          //             Tab(icon: Icon(Icons.shop), text: "Market",),
          //             Tab(icon: Icon(Icons.chat_bubble), text: "Chat",),
          //             Tab(icon: Icon(Icons.home), text: "Home",),
          //             Tab(icon: Icon(Icons.person), text: "Profile",)
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ),
      );
  }
}


/*

 */