import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:xyz/screen/quiz_screen.dart';

import './profile_screen.dart';
import './home_screen.dart';
import './chat_screen.dart';


class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  
  
  List<Map<String,Object>> _pages= [
    {
      'page' : HomeScreen(),
      'title' : 'Home'
    },
    {
      'page' : QuizScreen(),
      'title' : 'RoomMate'
    },
    {
      'page' : ChatScreen(),
      'title' : 'Chat'
    },
    {
      'page' : ProfileScreen(),
      'title' : 'Profile'
    },
  ];

  int _selectedPageIndex = 0;

  void _selectPage (int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
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
      
      body: _pages[_selectedPageIndex]['page'],

      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Theme.of(context).primaryColor,
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'RoomMate',
            backgroundColor: Theme.of(context).primaryColor,
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Chat',
            backgroundColor: Theme.of(context).primaryColor,
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Theme.of(context).primaryColor,
            ),
        ],
        ),
    );
  }
}
