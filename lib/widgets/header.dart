import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          Column(
            children: <Widget>[
              Container(
                child: IconButton(
                  icon: const Icon(Icons.account_circle),
                  tooltip: 'User Menu',
                  color: Color.fromRGBO(52, 65, 144, 1),
                  // color: Theme.of(context).secondaryHeaderColor,
                  onPressed: () {
                    // ... Show User Diagnostics??? ...
                  },
                  iconSize: 40.0,
                ),
              ),
            ],
          ),
          Column(
            children: [
// Container FOR STYLING/RE-SIZING...NOT YET IN USE
              Container(
                child: Text('One Choice', 
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image(
                height: 40.0,
                image: AssetImage('media/sun-logo.jpeg'),
                // image: AssetImage('media/oneChoiceTree.png'),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: const Icon(Icons.share),
                tooltip: 'Share',
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