import 'package:flutter/material.dart';
import 'package:one_choice/utils/themes.dart';
import 'package:one_choice/widgets/onechoicedata_agent.dart';

import './pages/routing_constants.dart';
import './pages/my_home_page.dart';
import './pages/chat_page.dart';

import './pages/router.dart' as router;

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
        debugShowCheckedModeBanner: false, 
        title: 'OneChoice',
        onGenerateRoute: router.generateRoute,
        initialRoute: HomePageRoute,
        theme: ThemeData(
          bottomAppBarColor: Color.fromRGBO(37, 185, 170, 1),
          brightness: Brightness.light,
          fontFamily: 'NotoSansJP',
          primaryColor: Color.fromRGBO(37, 185, 170, 1),
          secondaryHeaderColor: Color.fromRGBO(47, 38, 119, 1), // dark purple
          textTheme: TextTheme(
            bodyText1: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ), 
// TODO
// MAY NOT NEED home: ~ AS AM NOW USING initialRoute

        // home: OneChoiceDataAgent(
        //   child:
        //     new MyApp(),
        //   ),
    );
  }
}


// TODO
// UNSURE IF WE STILL NEED THIS _MyAppState TO BE SET UP

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => new _MyAppState();
// }

// class _MyAppState extends State<MyApp> {

//   bool _isLoading = true;

  // @override
  // void initState() {
  //   super.initState();
  //   initPlatformState();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  // Platform messages are asynchronous, so we initialize in an async method.
  // initPlatformState() async {
  //   _isLoading = true;

  //   if (!mounted) return;
  //   setState(() {
  //     _isLoading = false;
  //   });
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return  OneChoiceDataAgent(
  //       // child: new MyHomePage()
  //       // child: new ChatPage()
  //   );
  // }
// }