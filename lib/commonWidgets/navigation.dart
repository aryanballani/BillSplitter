import "package:flutter/material.dart";

class Navigation extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const Navigation({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
      return AppBar(
        title: Text(title),
        centerTitle: true,
        // actions: [
        //   IconButton(onPressed: () {
        //     print("Logout button pressed");
        //   }, 
        //   icon: const Icon(Icons.logout))
        // ],
        backgroundColor: Colors.blue,
      );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
