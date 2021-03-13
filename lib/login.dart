import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import './screen/auth_screen.dart';
import './screen/tabs_screen.dart';
// import './screen/main_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.onAuthStateChanged,
        builder: (ctx, userSnapshot) {
          if (userSnapshot.hasData) {
            return TabsScreen();
          }
          return AuthScreen();
        });
  }
}
