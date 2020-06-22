import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          Column(
            children: [
// Container FOR STYLING/RE-SIZING...NOT YET IN USE
              Container(
                child: Text('One Choice', 
                  textScaleFactor: 1.4,
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image(
                height: 50.0,
                image: AssetImage('media/oneChoiceTree.png'),
              ),
            ],
          ),
          Column(
            children: [
              // Text('Share-icon'),
              IconButton(
                icon: const Icon(Icons.settings),
                tooltip: 'Settings',
                onPressed: () {
                  // scaffoldKey.currentState.showSharePage(sharePage);
                },
              ),
            ],
          ),
        ]
      )
    );
  }
}