
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/apartment.dart';
import '../widget/building_items.dart';
import '../dummy_data.dart';
import '../widget/apartment_rooms.dart';

class TabsScreen extends StatelessWidget {

  Widget buildCity (String city ,String imageUrl) {
     return Padding(
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
           Text(city),
         ],
       ),
     );
  }

  @override
  Widget build(BuildContext context) {

   List<Apartment> furnishedApt = DUMMY_APARTMENT.where((element) => element.isfurnished==true).toList();

    return Scaffold(
        appBar: AppBar(
        title: Text('SheHacks (LOGO)'),
        actions: [
          DropdownButton(
            icon: Icon(
              Icons.more_vert,
              color: Theme.of(context).primaryIconTheme.color,
            ),
            items: [
              DropdownMenuItem(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.exit_to_app),
                    SizedBox(width: 8),
                    Text('Logout'),
                  ],
                ),
                value: 'Logout',
              ),
            ],
            onChanged: (itemIdentifier) {
              if (itemIdentifier == 'Logout') {
                FirebaseAuth.instance.signOut();
              }
            },
          ),
        ],
      ),

        body: SingleChildScrollView(
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
                  padding: EdgeInsets.only(top: 10),
                  child:  ListView(
                    scrollDirection: Axis.horizontal,
                    children: DUMMY_CITIES.map((city) => buildCity(city.title, city.imageUrl)).toList()
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
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: DUMMY_BUILDING.map(
                    (buildingData) => BuildingItem(
                      buildingData.name, 
                      buildingData.images,
                      buildingData.address,
                      buildingData.rating,
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
        ),
      );
  }
}