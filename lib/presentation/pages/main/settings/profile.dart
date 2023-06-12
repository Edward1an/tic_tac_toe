import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "ProfileRoute")
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          ElevatedButton(onPressed: () {}, child: const Text("Set new photo")),
          const TextField(decoration: InputDecoration(helperText: "Username")),
          const TextField(decoration: InputDecoration(helperText: "@Login")),
          ElevatedButton(onPressed: () {}, child: const Text("Save changes")),
          const SizedBox(
            height: double.minPositive * 0.2,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Log out")),
        ],
      ),
    );
  }
}
