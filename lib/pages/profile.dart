import "package:flutter/material.dart";
import "../commonWidgets/navigation.dart";

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Navigation(title: "Profile"),
      body: Center(
        child: Text("Profile Page: Stub"),
      )
    );
  }
}