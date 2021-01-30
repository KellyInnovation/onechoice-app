import 'package:flutter/material.dart';
import 'package:one_choice/sheets/bottom_sheet.dart';

import '../pages/routing_constants.dart';

class BottomNavBarDummy extends StatelessWidget {

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
                // SEEMS TO SETUP A state IN THE bottem_sheet WIDGET
                // MyBottomSheet(context),
                // TabBar(
                //   tabs: [
                    Tab(
                      child: FlatButton(
                        child: Container(                     
                          child: Column(
                            children: [  
                              Icon(
                                Icons.home,
                                color: Colors.purple[800],
                                size: 40.0,
                              ),
                              // Text('Home'),
                            ],
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, HomePageRoute);
                        }
                      ),
                    ),
                    Tab(
                      child: FlatButton(
                        child: Container(
                          child: Column(
                            children: [  
                              Icon(Icons.chat_bubble,
                                color: Colors.red[800],
                                size: 38.0,
                              ),
                              // Text('Chat'),
                            ],
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, ChatPageRoute);
                        }
                      ),
                    ),
                    Tab(
                      child: FlatButton(
                        child: Container(
                          child: Column(
                            children: [  
                              Icon(Icons.shop,
                                color: Colors.green[800],
                                size: 38.0,
                              ),
                              // Text('Shop'),
                            ],
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, MarketPageRoute);
                        }
                      ),
                    ),
                    Tab(
                      child: FlatButton(
                        child: Container(
                          child: Column(
                            children: [  
                              Icon(Icons.person,
                                color: Colors.blue[800],
                                size: 38.0,
                              ),
                              // Text('Profile'),
                            ],
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, ProfilePageRoute);
                        }
                      ),
                  //   ),
                  // ],
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
