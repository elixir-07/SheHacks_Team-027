import 'package:flutter/material.dart';

import '../login.dart';



class InitialScreen extends StatelessWidget {

  void _loginScreen(BuildContext ctx) {
  Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => LoginScreen()));
}

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
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Text(
                'find the perfect place for living',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
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