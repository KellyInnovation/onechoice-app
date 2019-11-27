import 'package:flutter/material.dart';

class ControlButtons extends StatelessWidget {
  String choiceFavorites = 'Favorites';
  String choicePhotoVideo = 'Photo/Video';
  String choiceCheckIn = 'Check-in';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget> [
          Icon(
            Icons.thumb_up,
          ),
          Text(choiceFavorites),
          Icon(
            Icons.photo,
          ),
          Text(choicePhotoVideo),
          Icon(
            Icons.navigation,
            semanticLabel: choiceCheckIn,
          ),
          Text(choiceCheckIn),
        ],
      ),
    );
  }
}