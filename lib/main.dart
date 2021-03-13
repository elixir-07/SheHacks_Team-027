import 'package:flutter/material.dart';

import './screen/initial_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Home',
      theme: ThemeData(
        primaryColor: Colors.blue.shade200,
        accentColor: Colors.deepPurple,
        accentColorBrightness: Brightness.light,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          headline1: TextStyle(
            fontSize: 23,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            ),
        ),
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      //home: MyHomePage(),
      routes: {
        '/' : (ctx) => InitialScreen(),
      }
    );
  }
}

