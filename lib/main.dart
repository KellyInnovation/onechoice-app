import 'package:one_choice/pages/my_home_page.dart';
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
  // Map<int, Color> color = {
  //   50: Color.fromRGBO(47, 38, 119, .1),
  //   100: Color.fromRGBO(47, 38, 119, .2),
  //   200: Color.fromRGBO(47, 38, 119, .3),
  //   300: Color.fromRGBO(47, 38, 119, .4),
  //   400: Color.fromRGBO(47, 38, 119, .5),
  //   500: Color.fromRGBO(47, 38, 119, .6),
  //   600: Color.fromRGBO(47, 38, 119, .7),
  //   700: Color.fromRGBO(47, 38, 119, .8),
  //   800: Color.fromRGBO(47, 38, 119, .9),
  //   900: Color.fromRGBO(47, 38, 119, 1),
  // };
  // MaterialColor colorCustom = MaterialColor(0xFFFF5C57, color);
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false, 
        title: 'OneChoice',
        routes: {
          MyHomePage.routeName: (_) => MyHomePage(),
        },
        theme: ThemeData(
// NEW COLORS
// #2F2677 / fromRGBO(47, 38, 119, 1) - dark purple - icons
// #344190 / fromRGBO(52, 65, 144, 1) - profile icon
// #25B9AA / fromRGBO(37, 185, 170, 1) - header/footer background
          fontFamily: 'NotoSansJP',
          brightness: Brightness.light,
          primaryColor: Color.fromRGBO(37, 185, 170, 1),
          bottomAppBarColor: Color.fromRGBO(37, 185, 170, 1),
    // ICONS
          secondaryHeaderColor: Color.fromRGBO(47, 38, 119, 1), // dark purple
          textTheme: TextTheme(
            bodyText1: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ), 
        home: OneChoiceDataAgent(
          child:
            new MyApp(),
          ),
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