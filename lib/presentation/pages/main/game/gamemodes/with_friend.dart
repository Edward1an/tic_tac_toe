import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "WithFriendRoute")
class WithFriendScreen extends StatelessWidget {
  const WithFriendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("With Friend"),
      ),
    );
  }
}
