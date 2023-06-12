import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "WaitForYourFriendRoute")
class WaitForYourFriendScreen extends StatelessWidget {
  const WaitForYourFriendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Room was created. Wait For Your Friend "),
            ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).pushNamed("/with_friend");
                },
                child: const Text("Match"))
          ],
        ),
      ),
    );
  }
}
