import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "FriendListRoute")
class FriendListScreen extends StatelessWidget {
  const FriendListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("Choose your friend to play with"),
            ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).pushNamed("/wait_for_your_friend");
                },
                child: const Text("Some of your friend"))
          ],
        ),
      ),
    );
  }
}
