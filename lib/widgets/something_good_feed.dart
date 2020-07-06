import 'package:flutter/material.dart';
// import 'package:flutter/semantics.dart';

class SomethingGoodFeed extends StatelessWidget {
  // DUMMY TEXT
  final List<String> feed;
  final String store = 'Third Street Stuff';
  
  SomethingGoodFeed(this.feed);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 300,

      child: feed.isEmpty ? Column(
        children: <Widget> [
          Text('Nothing Good...yet!'),
        ],
      ) : ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (_, index) =>
          Container(
            margin: EdgeInsets.all(2.0),
            child: Column(
              children: <Widget>[            
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Column(
                        children: <Widget>[
                          Text(
                            feed[index],
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                         Icon(
                            Icons.more_horiz,
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'media/latte_cup.png',
                            height: 100,
                            width: 80,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // return Card(
          //   elevation: 5,
          //   margin: EdgeInsets.symmetric(
          //     vertical: 8.0,
          //     horizontal: 5.0,
          //   ),
            // child: ListTile(
            //   leading: Text(feed[index]),
            //   title: Text(store),
            //   subtitle: Container(
            //     // height: 100,
            //     child: Column(
            //       children: <Widget>[
            //         Icon(
            //           Icons.more_horiz,
            //         ),
            //         Image.asset(
            //           'media/latte_cup.png',
            //           height: 100,
            //           width: 80,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            
          // ); 
        itemCount: feed.length,
      ),
    );
  }
}