import 'package:flutter/material.dart';
// import 'package:flutter/semantics.dart';

class SomethingGoodForm extends StatefulWidget {
  @override
  _SomethingGoodFormState createState() => new _SomethingGoodFormState();
}

class _SomethingGoodFormState extends State<SomethingGoodForm> {
  final _formKey = GlobalKey<FormState>();

  List<String> _onegoodthing = [''];

  getFormWidget() {
    TextFormField(
      initialValue: null,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'The coffee is great at...',
        labelText: 'One good thing...',
      ),
      onSaved: (String value) {
        setState(() {
          _onegoodthing.add(value);
        });
      },
      validator: (String value) {
        return value.contains('@') ? 'The @ char is not allowed.' : null;
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      // child: getFormWidget(),
      child: Column(
        children: <Widget>[
          getFormWidget(),
          Text('hello'),
        ],
      )
    );
  }
}

  // @override
  // Widget build(BuildContext context) {
  //   return Form(
  //     key: _formKey,
  //     child: getFormWidget(), 
  //   );
  // }

  // List<Widget> getFormWidget() {
  //   List<Widget> formWidget = new List();
    
  //   formWidget.add(new TextFormField(
  //     decoration: InputDecoration(labelText: 'What\'s good?', 
  //       hintText: 'Coffee is good'),
  //     onSaved: (value) {
  //       setState(() {
  //         _name = value;
  //       });
  //     },
  //   ));

  // }
// }


// class SomethingGoodInput2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         TextFormField(
//           initialValue: null,
//           decoration: const InputDecoration(
//             border: OutlineInputBorder(),
//             hintText: 'The coffee is great at...',
//             labelText: 'One good thing...',
//           ),
//           onSaved: (String value) {
//             // code runs when User saves form
            
//           },
//           validator: (String value) {
//             return value.contains('@') ? 'The @ char is not allowed.' : null;
//           },
//         ),
//       ],
//     );
//   }
// }