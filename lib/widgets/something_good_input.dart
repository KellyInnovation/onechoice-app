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
    final enteredPost = inputController.text;
    
    try {
      if(enteredPost.isNotEmpty) {
        widget.addFeed({'message': enteredPost});
      }
    } catch (e) {}
// QUICK FIX TO clear THE TEXTFIELD AFTER SUBMISSION
    inputController.text = '';
  }

// USE @override IS optional; USE WHEN superclass IS NOT UNDER CONTROL
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
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'What\'s something good?',
            ),
          ),          
        ],
      ),
    );
  }
}