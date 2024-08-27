import 'package:app/pages/home/friends.dart';
import 'package:app/pages/home/home.dart';
import 'package:app/pages/authenticate/login.dart';
import 'package:app/pages/home/profile.dart';
import 'package:app/pages/wrapper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bill Splitter',
      debugShowCheckedModeBanner: false,
      home: Wrapper(),
      routes: {
        '/home': (context) => HomePage(),
        './friends': (context) => FriendsPage(),
        './profile': (context) => ProfilePage(),
        // '/login': (context) => LoginPage(),
      },
    );
  }
}

