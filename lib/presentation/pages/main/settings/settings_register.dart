import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "SettingsRegisterRoute")
class SettingsRegisterScreen extends StatelessWidget {
  const SettingsRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          const Text(
            "Register your account",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Text(
            "All your score will be saved",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          ),
          const TextField(decoration: InputDecoration(helperText: "Username")),
          const TextField(decoration: InputDecoration(helperText: "@Login")),
          const TextField(decoration: InputDecoration(helperText: "Email")),
          const TextField(decoration: InputDecoration(helperText: "Password")),
          const TextField(
              decoration: InputDecoration(helperText: "Repeat password")),
          ElevatedButton(onPressed: () {}, child: const Text("Register")),
        ],
      ),
    );
  }
}
