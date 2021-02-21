// import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:explore/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // return new DynamicTheme(
    //   defaultBrightness: Brightness.light,
    //   data: (brightness) {
    //     return brightness == Brightness.light
    //         ? new ThemeData(
    //             primarySwatch: Colors.blueGrey,
    //             backgroundColor: Colors.white,
    //             cardColor: Colors.blueGrey[50],
    //             primaryTextTheme: TextTheme(
    //                 button: TextStyle(
    //                     color: Colors.blueGrey,
    //                     decorationColor: Colors.blueGrey[300]),
    //                 subtitle2: TextStyle(color: Colors.blueGrey[900]),
    //                 subtitle1: TextStyle(color: Colors.black),
    //                 headline1: TextStyle(color: Colors.blueGrey[800])),
    //             bottomAppBarColor: Colors.blueGrey[900],
    //             iconTheme: IconThemeData(color: Colors.blueGrey),
    //             brightness: brightness)
    //         : new ThemeData(
    //             primarySwatch: Colors.blueGrey,
    //             backgroundColor: Colors.blueGrey[900],
    //             cardColor: Colors.black,
    //             primaryTextTheme: TextTheme(
    //                 button: TextStyle(
    //                     color: Colors.blueGrey[200],
    //                     decorationColor: Colors.blueGrey[50]),
    //                 subtitle2: TextStyle(color: Colors.white),
    //                 subtitle1: TextStyle(color: Colors.blueGrey[300]),
    //                 headline1: TextStyle(color: Colors.white70)),
    //             bottomAppBarColor: Colors.black,
    //             iconTheme: IconThemeData(color: Colors.blueGrey[200]),
    //             brightness: brightness);
    //   },
    //   themedWidgetBuilder: (context, data) => new MaterialApp(
    //     title: 'Flutter Demo',
    //     debugShowCheckedModeBanner: false,
    //     theme: data,
    //     home: HomePage(),
    //   )
    // );
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
