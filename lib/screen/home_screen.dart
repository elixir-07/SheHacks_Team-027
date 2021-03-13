import 'package:flutter/material.dart';

import '../widget/home_city.dart';
import '../models/apartment.dart';
import '../widget/home_apartment.dart';
import '../dummy_data.dart';
import '../widget/apartment_rooms.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

   List<Apartment> furnishedApt = DUMMY_APARTMENT.where((element) => element.isfurnished==true).toList();

    return 
    // Scaffold(body: 
        SingleChildScrollView(
          child: Column(
            children: <Widget>[

              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                child: Text(
                  'Find Your Sweet Home',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                  ),
                  ),),

                Container(
                  height: 150,
                  // padding: EdgeInsets.only(top: 1),
                  child:  ListView(
                    scrollDirection: Axis.horizontal,
                    children: DUMMY_CITIES.map(
                      (city) => HomeCity(
                        id: city.id,
                        title: city.title,
                        imageUrl: city.imageUrl,
                      )
                        ).toList()
                  ),
                ),
              
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                child: Text(
                  'Apartment',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                  ),
                  ),),

              Container(
                height: 304,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: DUMMY_BUILDING.map(
                    (buildingData) => HomeApartment(
                      id: buildingData.id,
                      name: buildingData.name, 
                      imageUrl: buildingData.images,
                      address :buildingData.address,
                      rating :buildingData.rating,
                      occupacy: buildingData.occupacy,
                      )
                      ).toList(),
                ),
              ),

              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                child: Text(
                  'Furnished Properties',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  ),

              Container(
                height: 300,
                child: 
               ListView(
                 children: furnishedApt.map(
                   (apartment) => ApartmentRooms(
                      id: apartment.id,
                      name: apartment.name,
                      imageUrl: apartment.images,
                      address: apartment.address,
                      rating: apartment.rating,
                 )
                 ).toList(),
               ),
                
              ),

            ],
          ),
        );

      //   floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     Navigator.pushNamed(context, '/chat_screen');
      //   },
      //   icon: Icon(Icons.search),
      //   label: Text('Find your roommate'),
      // ),

      // );
  }
}