import 'package:flutter/material.dart';

import '../screen/city_apartment_screen.dart';

class HomeCity extends StatelessWidget {

  final String id;
  final String title;
  final String imageUrl;

  HomeCity({
    this.id,
    this.title,
    this.imageUrl,
  });

  void selectCity(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CityApartmentScreen.routeName,
      arguments: {
        'id' : id,
        'city_name' : title,
      }
    );
  }

  @override
  Widget build(BuildContext context) {

      return InkWell(
        onTap: () => selectCity(context),
        splashColor: Theme.of(context).accentColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 53,
                backgroundColor: Colors.grey.shade300,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
              Text(title),
            ],
          ),
        ),
      );
    }
}
