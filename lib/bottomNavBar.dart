import 'package:flutter/material.dart';
import 'package:one_choice/sheets/bottom_sheet.dart';

class BottomNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var ht = 80.0;

    return Container(child: 
      BottomAppBar(
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
                  Tab(icon: Icon(Icons.shop), text: "Market",),
                  Tab(icon: Icon(Icons.chat_bubble), text: "Chat",),
                  Tab(icon: Icon(Icons.home), text: "Home",),
                  Tab(icon: Icon(Icons.person), text: "Profile",)
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
