import 'package:flutter/material.dart';

import './routing_constants.dart';
import './home_page.dart';
import './chat_page.dart';
import './market_page.dart';
import './profile_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
switch (settings.name) {
  case HomePageRoute:
    return MaterialPageRoute(builder: (context) => HomePage());
  case ChatPageRoute:
    return MaterialPageRoute(builder: (context) => ChatPage());
  case MarketPageRoute:
    return MaterialPageRoute(builder: (context) => MarketPage());
  case ProfilePageRoute:
    return MaterialPageRoute(builder: (context) => ProfilePage());
  default:
    return MaterialPageRoute(builder: (context) => HomePage());
 } 
}