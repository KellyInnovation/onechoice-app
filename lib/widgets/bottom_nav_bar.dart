import 'package:flutter/material.dart';
import 'package:one_choice/sheets/bottom_sheet.dart';

import '../pages/routing_constants.dart';

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
// TODO
                // UNSURE WHAT THE PURPOSE OF MyBottomSheet WIDGET IS...
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
// TODO
                      // child: FloatingActionButton(
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, HomePageRoute);
                      //   }
                      // ),
                    ),
                    Tab(
                      child: FlatButton(
                        child: Container(
// TODO
                          // TRYING TO FIT Text AND Icon IN SPACE                          
                          child: Column(
                            children: [  
                              Icon(Icons.chat_bubble,
                                color: Colors.red[800],
                                size: 40.0,
                              ),
                              Text('Chat'),
                            ],
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, ChatPageRoute);
                        }
                      ),
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
