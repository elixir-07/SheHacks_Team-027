import '../screen/room_detail_screen.dart';
import 'package:flutter/material.dart';

class ApartmentRooms extends StatelessWidget {
  final String id;
  final String name;
  final String imageUrl;
  final String address;
  final double rating;

  ApartmentRooms({
    this.id,
    this.name, 
    this.imageUrl, 
    this.address, 
    this.rating });

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
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        child: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Image.network(
                      imageUrl,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(6),
                      alignment: Alignment.center,
                      width: 200,
                      child: Text(
                        name,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Rating : $rating'),
                        ),
                       
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(address)),
                      
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
