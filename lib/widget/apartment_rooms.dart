import 'package:flutter/material.dart';

class ApartmentRooms extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String address;
  final double rating;

  ApartmentRooms({
    this.name, 
    this.imageUrl, 
    this.address, 
    this.rating });


  @override
  Widget build(BuildContext context) {
    return Card(
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
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Text(),
                      // ),
                      
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
    );
  }
}
