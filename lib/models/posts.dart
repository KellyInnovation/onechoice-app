import 'package:flutter/foundation.dart';

class Posts {
  final String message;
  final DateTime date;
  // final String userID; // LATER...MUST FETCH THIS

  Posts({
    @required this.message,
    @required this.date,
    // @required this.userID,
  });
}