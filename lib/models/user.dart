import 'package:flutter/foundation.dart';

// A USER SHOULD:
// HAVE A USERNAME
// HAVE A UNIQUE 'USER ID'
// HAVE A SIGNUP DATE
// HAVE AN AVATAR...LATER

class User {
  final String username;
  final String userID; // A UNIQUE id
  final DateTime signupDate;
  final dynamic avatar;

  User({
    @required this.username,
    @required this.userID,
    @required this.signupDate,
    @required this.avatar,
  });
}