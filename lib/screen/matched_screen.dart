import 'package:flutter/material.dart';
import 'package:xyz/widget/matched_card.dart';

import '../widget/matched_card.dart';

class MatchedScreen extends StatelessWidget {
  // void chatscreen(BuildContext ctx) {
  //   Navigator.of(ctx).pushNamed(
  //     '/chat_screen',
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 100,
            child: Center(
              child: Text(
                'People With Similar Intrests !!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          MatchedCard(
            name: 'Ruchika',
            work: 'Software Engineer',
            place: 'Delhi',
            image:
                'https://i.pinimg.com/564x/6f/de/85/6fde85b86c86526af5e99ce85f57432e.jpg',
            // chat: chatscreen,
          ),
          MatchedCard(
              name: 'Sneha',
              work: 'Data Scientist',
              place: 'Delhi',
              image:
                  'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2020/08/11/918643-sudiksha.jpg'),
          MatchedCard(
            name: 'Khusi',
            work: 'Game Developer',
            place: 'Delhi',
            image:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNJNy9LfU-CLw4DS6ECKU6nXCY_xhH7fsz0g&usqp=CAU',
          )
        ],
      ),
    );
  }
}
