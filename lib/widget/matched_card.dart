import 'package:flutter/material.dart';

import '../screen/chat_screen.dart';

class MatchedCard extends StatelessWidget {

  final String name;
  final String work;
  final String place;
  final String image;
  // final Function chat;

  MatchedCard({
    this.name, this.place, this.work, this.image,
    //  this.chat
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ChatScreen(),
      child: Container(
        height: 180,
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
                        image,
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 30, bottom: 8, left: 8, right: 8),
                        alignment: Alignment.topLeft,
                        // width: 200,
                        child: Text(
                          name, 
                          style: Theme.of(context).textTheme.headline3,
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(work),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(place)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}