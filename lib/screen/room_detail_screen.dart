import 'package:flutter/material.dart';

import '../dummy_data.dart';

class RoomDetailScreen extends StatelessWidget {
  static const String routeName = '/room-details';

  @override
  Widget build(BuildContext context) {
    final roomId = ModalRoute.of(context).settings.arguments as String;
    final selectRoom = DUMMY_APARTMENT.firstWhere((room) => room.id == roomId);

    return Scaffold(
      //appBar: AppBar(title: Text('bar'),),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              padding: EdgeInsets.all(2),
              child: Image.network(
                selectRoom.images,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    selectRoom.name,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(selectRoom.address),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Ready to Move in  |  Furnished',
                      style: Theme.of(context).textTheme.headline2
                      // TextStyle( color: Theme.of(context).accentColor),
                      ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    selectRoom.desc,
                    style: Theme.of(context).textTheme.headline4,
                    // TextStyle( color: Theme.of(context).accentColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Facilites',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: selectRoom.features
                        .map((e) => Container(
                              height: 60,
                              width: 70,
                              child: Card(
                                margin: EdgeInsets.all(2),
                                child: Center(child: Text(e)),
                              ),
                            ))
                        .toList(),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Price :',
                              style: Theme.of(context).textTheme.headline3
                              // TextStyle( color: Theme.of(context).accentColor),
                              ),
                          Text(
                            'Rs. ${selectRoom.price} \n per month',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          ],
                      ),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Rent',
                                style: 
                                TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
