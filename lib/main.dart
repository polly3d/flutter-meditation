import 'package:flutter/material.dart';
import 'package:meditation/constants.dart';
import 'package:meditation/screens/home-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meditaion',
      theme: ThemeData(
          fontFamily: 'Cairo',
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: Theme.of(context).textTheme.apply(
                displayColor: kTextColor,
              )),
      home: HomeScreen(),
    );
  }
}
