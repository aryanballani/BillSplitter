import "package:flutter/material.dart";
import '../../commonWidgets/navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navigation(
        title: "Home",
      ),
      body: Center(child: Text("Home Page: Stub")),
      drawer: makeDrawer(context),
    );
  }

  Drawer makeDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue,
      child: Column(
        children: [
          DrawerHeader(
              child: Icon(
            Icons.cloud_circle,
            size: 70,
          )),
          ListTile(
              leading: Icon(Icons.home),
              title: Text("HOME"),
              onTap: () {
                Navigator.pop(context);
              }),
          ListTile(
              leading: Icon(Icons.account_box_rounded),
              title: Text("PROFILE"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, './profile');
              }),
          ListTile(
              leading: Icon(Icons.people),
              title: Text("FRIENDS"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, './friends');
              })
        ],
      ),
    );
  }
}
