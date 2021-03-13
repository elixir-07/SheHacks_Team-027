import 'package:flutter/material.dart';

import '../login.dart';

class InitialScreen extends StatelessWidget {
  void _loginScreen(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(10),
          //     gradient: LinearGradient(
          //       colors: [
          //         Theme.of(context).primaryColor,
          //         Theme.of(context).accentColor,
          //       ],
          //     )),
          child: Column(
            children: [
              Container(
                height: 350,
                width: 400,
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Image.network(
                  'https://www.rocketmortgage.com/resources-cmsassets/RocketMortgage.com/Article_Images/Large_Images/TypesOfHomes/types-of-homes-hero.jpg',
                  height: 300,
                  width: 320,
                ),
              ),
              Container(
                height: 100,
                width: 300,
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
                child: Text('Find the perfect place for living',
                    style: Theme.of(context).textTheme.headline4),
              ),
              Container(
                height: 50,
                width: 300,
                margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                // padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        // Colors.black12
                        Theme.of(context).primaryColor,
                        Theme.of(context).accentColor,
                      ],
                    )),
                child: InkWell(
                  onTap: () => _loginScreen(context),
                  child: Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      
    );
  }
}
