import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "ConnectionRoute")
class ConnectionPage extends StatelessWidget {
  const ConnectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).navigateNamed("friends");
                },
                child: const Text("Friends and me")),
            ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).navigateNamed("notifications");
                },
                child: const Text("Notifications")),
          ],
        ),
        const Expanded(child: AutoRouter())
      ],
    );
  }
}
