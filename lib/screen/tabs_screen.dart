import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../widget/building_items.dart';
import '../dummy_data.dart';

class TabsScreen extends StatelessWidget {
  Widget buildCity(String city, String imageUrl) {
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
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 150,
              padding: EdgeInsets.only(top: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  buildCity('Delhi',
                      'https://cdn.britannica.com/13/146313-050-DD9AAC27/India-War-Memorial-arch-New-Delhi-Sir.jpg'),
                  buildCity('Mumbai',
                      'https://cdn.theculturetrip.com/wp-content/uploads/2017/04/yoyosrk-wikicommons.jpg'),
                  buildCity('Noida',
                      'https://www.atlasnetwork.org/assets/uploads/events-main/lotus_temple_new_delhi_india.jpg'),
                  buildCity('Goa',
                      'https://goatouristplaces.files.wordpress.com/2012/09/goa-tourist-places.jpg'),
                  buildCity('Nagpur',
                      'https://www.oyorooms.com/travel-guide/wp-content/uploads/2019/04/Deekshabhoomi.jpg'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.topLeft,
              child: Text(
                'Apartment',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: DUMMY_BUILDING
                    .map((buildingData) => BuildingItem(
                          buildingData.name,
                          buildingData.images,
                          buildingData.address,
                          buildingData.rating,
                        ))
                    .toList(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.topLeft,
              child: Text(
                'Furnished Properties',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 200,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/chat_screen');
        },
        icon: Icon(Icons.search),
        label: Text('Find your roommate'),
      ),
    );
  }
}
