
import '../screen/room_detail_screen.dart';
import 'package:flutter/material.dart';

class HomeApartment extends StatelessWidget {
  final String id;
  final String name;
  final String imageUrl;
  final String address;
  final double rating;
  final String occupacy;

  HomeApartment({ this.id ,this.name, this.imageUrl, this.address, this.rating, this.occupacy });

  void selectRoom(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      RoomDetailScreen.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectRoom(context),
      splashColor: Theme.of(context).accentColor,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            children: [
            
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: Image.network(
                        imageUrl,
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                ),
             
              Container(
                padding: EdgeInsets.all(6),
                alignment: Alignment.center,
                width: 200,
                child: Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              ),

              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(occupacy),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('2nd Floor'),
                      ),
                      
                    ],),

                    Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('$rating'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(address),
                        ),
                    ],),
                  ],
                ),
              )
            ],
          ),
          
        ),
      ),
    );
  }
}
