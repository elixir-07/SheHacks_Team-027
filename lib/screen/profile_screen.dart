import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../models/apartment.dart';
import '../widget/apartment_rooms.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/profile-screen';

  @override
  Widget build(BuildContext context) {
    List<Apartment> favouriteApt = DUMMY_APARTMENT
        .where((element) => element.isfurnished == true)
        .toList();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          NetworkImage("https://i.ibb.co/3kBfd22/coverpic.jpg"),
                      fit: BoxFit.cover)),
              child: Container(
                width: double.infinity,
                height: 200,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      alignment: Alignment.bottomCenter,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://i.pinimg.com/236x/5d/5b/d4/5d5bd4b9b31838429abba0d226051ccc.jpg"),
                        radius: 45.0,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Rohini Garg",
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Delhi, India",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Theme.of(context).buttonColor,
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              elevation: 2.0,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "25 years old",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Single",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.topLeft,
              child: Text(
                'Fav Apartment',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 300,
              child: ListView(
                children: favouriteApt
                    .map((apartment) => ApartmentRooms(
                          id: apartment.id,
                          name: apartment.name,
                          imageUrl: apartment.images,
                          address: apartment.address,
                          rating: apartment.rating,
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
