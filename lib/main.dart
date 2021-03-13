import 'package:flutter/material.dart';

import './screen/initial_screen.dart';
import './login.dart';
import './screen/chat_screen.dart';

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
            buttonColor: Colors.blue[200],
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),

        //home: MyHomePage(),
        routes: {
          '/': (ctx) => InitialScreen(),
          '/chat_screen': (ctx) => ChatScreen(),
        });
  }
}

void _loginScreen(BuildContext ctx) {
  Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => LoginScreen()));
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Image.network(
                  'https://www.rocketmortgage.com/resources-cmsassets/RocketMortgage.com/Article_Images/Large_Images/TypesOfHomes/types-of-homes-hero.jpg'),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Text(
                'Incenzo',
                style: TextStyle(
                    color: Colors.blue[200],
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Text(
                'Find the perfect place for living',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Colors.blue[200],
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                onPressed: () => _loginScreen(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
