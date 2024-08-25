import 'package:app/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'Bill Splitter',
      debugShowCheckedModeBanner: false,
      home: LoginPage()
    );
  }
}

