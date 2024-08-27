import "package:flutter/material.dart";
import '../../../../commonWidgets/navigation.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: Navigation(title: "Friends"),
        body: Center(
          child: Text("Friends Page: Stub"),
        ));
  }
}
