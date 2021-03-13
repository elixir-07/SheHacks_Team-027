import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../models/apartment.dart';
import '../widget/apartment_rooms.dart';

class CityApartmentScreen extends StatefulWidget {

  static const String routeName = '/City-apartment-screen';

  @override
  _CityApartmentScreenState createState() => _CityApartmentScreenState();
}

class _CityApartmentScreenState extends State<CityApartmentScreen> {
  List<Apartment> displayRooms;

  @override
  Widget build(BuildContext context) {

    final routeArg = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final cityId = routeArg['id'];
    final cityTitle = routeArg['city_name'];

    displayRooms = DUMMY_APARTMENT.where(
      (room) {return room.cityId.contains(cityId);}
      ).toList();

    return Scaffold(
      appBar: AppBar(title: Text(cityTitle),),

      body: ListView.builder(
          itemBuilder: (ctx, index) {
            return ApartmentRooms(
              id: displayRooms[index].id,
              name: displayRooms[index].name,
              imageUrl: displayRooms[index].images,
              address: displayRooms[index].address,
              rating: displayRooms[index].rating,
              );
                 },

          itemCount: displayRooms.length,
          
        ),
    );
  }
}