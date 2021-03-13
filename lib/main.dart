
import 'package:flutter/material.dart';

import './screen/initial_screen.dart';
import './screen/chat_screen.dart';
import './screen/city_apartment_screen.dart';
import './screen/room_detail_screen.dart';

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
        accentColor: Colors.redAccent,
        accentColorBrightness: Brightness.light,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          headline1: TextStyle(
            fontSize: 30,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            color: Colors.black,
            ),
          headline2: TextStyle(
            fontSize: 24,
            fontFamily: 'RobotoCondensed',
            color: Colors.red.shade300,
            // fontWeight: FontWeight.bold,
            ),
          headline3: TextStyle(
            fontSize: 24,
            fontFamily: 'RobotoCondensed',
            // color: Colors.black,
            fontWeight: FontWeight.bold,
            ),
          headline4: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            // color: Colors.black,
            // fontWeight: FontWeight.bold,
            ),
        ),
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: Colors.blue[200],
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
      routes: {
        '/' : (ctx) => InitialScreen(),
        '/chat_screen': (ctx) => ChatScreen(),
        CityApartmentScreen.routeName : (ctx) => CityApartmentScreen(),
        RoomDetailScreen.routeName : (ctx) => RoomDetailScreen(),
      }
    );
  }
}

