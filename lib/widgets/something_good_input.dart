import 'package:flutter/material.dart';
// import 'package:flutter/semantics.dart';

class SomethingGoodInput extends StatefulWidget {
  // SomethingGoodInput({Key key}) : super(key: key);
  final Function addFeed;
  SomethingGoodInput(this.addFeed);

  @override
  _SomethingGoodInputState createState() => _SomethingGoodInputState();
}

class _SomethingGoodInputState extends State<SomethingGoodInput> {
  final inputController = TextEditingController();

  void submitFeed() {
    final enteredFeed = inputController.text;
    
    try {
      if(enteredFeed.isNotEmpty) {
        widget.addFeed(enteredFeed);  
      }
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: inputController,
            onSubmitted: (_) => submitFeed(),
          ),          
        ],
      ),
    );
  }
}