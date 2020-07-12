import 'package:flutter/foundation.dart';

// A USER SHOULD:
// HAVE A USERNAME
// HAVE A UNIQUE 'USER ID'
// HAVE A SIGNUP DATE
// HAVE AN AVATAR...LATER

class User {
  final String username;
  // final String userId; // A UNIQUE id
  // final DateTime signupDate;
  // final avatar; // HOW TO DO THIS?

  User({
    @required this.username,
    // @required this.userId,
    // @required this.signupDate,
    // @required this.avatar, // HOW TO DO THIS?
  });
}