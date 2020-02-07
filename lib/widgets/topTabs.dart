import 'package:flutter/material.dart';

class TopTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Row( 
        children: <Widget> [
          Container(
            child: Align(
              child: Text('One Choice'),
            ) 
          ),
          Container(
            child: Image(
              image: AssetImage('media/oneChoiceTree.png'),
              
            )
          ),
        ]
      )
    );
  }
}
      // child:
      // TabBarView(
      //   children: [
      //     Container(
          //   child:Padding(
          //     padding: const EdgeInsets.only(top:40.0),
          //     child: Text("Market"),
          //   ),
          // ),
          // Container(
          //   child:Padding(
          //     padding: const EdgeInsets.only(top:40.0),
          //     child: Text("Chat"),
          //   ),
          // ),
          // Container(
          //   child:Padding(
          //     padding: const EdgeInsets.only(top:40.0),
          //     child: Text("Home"),
          //   ),
          // ),
          // Container(child:Padding(
          //   padding: const EdgeInsets.only(top:40.0),
          //   child: Text("Profile"),
          // ),
    //       ),
    //     ],
    //   ),
