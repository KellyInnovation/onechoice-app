import 'package:flutter/material.dart';

import './routing_constants.dart';
import './my_home_page.dart';
import './chat_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
 switch (settings.name) {
   case HomePageRoute:
     return MaterialPageRoute(builder: (context) => MyHomePage());
   case ChatPageRoute:
     return MaterialPageRoute(builder: (context) => ChatPage());
   default:
    return MaterialPageRoute(builder: (context) => MyHomePage());
 } 
}