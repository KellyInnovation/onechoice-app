import 'package:one_choice/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:one_choice/utils/themes.dart';
import 'package:one_choice/widgets/onechoicedata_agent.dart';

typedef void OnError(Exception exception);

void main() => runApp(new MyMaterialApp());

class MyMaterialApp extends StatefulWidget {
  @override
  MyMaterialAppState createState() {
    return new MyMaterialAppState();
  }
}

class MyMaterialAppState extends State<MyMaterialApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'One Choice',
        routes: {
          MyHomePage.routeName: (_) => MyHomePage(),
        },
        debugShowCheckedModeBanner: false, theme: darkTheme, home:
        OneChoiceDataAgent(
        child:
          new MyApp())
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  initPlatformState() async {
    _isLoading = true;

    if (!mounted) return;
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  OneChoiceDataAgent(
        child: new MyHomePage()
    );
  }
}