import 'package:flutter/material.dart';

class ControlButtons extends StatelessWidget {
  final String choiceFavorites = 'Favorites';
  final String choicePhotoVideo = 'Photo/Video';
  final String choiceCheckIn = 'Check-in';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(
                Icons.thumb_up,
                semanticLabel: choiceFavorites,
              ),
              Text(choiceFavorites),
            ], 
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.photo,
                semanticLabel: choicePhotoVideo,
              ),
              Text(choicePhotoVideo),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.navigation,
                semanticLabel: choiceCheckIn,
              ),
              Text(choiceCheckIn),
            ],
          ),
        ],
      ),
    );
  }
}