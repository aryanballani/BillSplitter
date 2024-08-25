import "package:flutter/material.dart";

class Navigation extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const Navigation({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
      return AppBar(
        title: const Text('Login Page'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(onPressed: () {
            print("Logout button pressed");
          }, 
          icon: const Icon(Icons.logout))
        ],
        backgroundColor: Colors.blue[100],
      );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
