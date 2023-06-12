import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "GameScreenRoute")
class GameScreenWidget extends StatelessWidget {
  const GameScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 50),
          ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).navigateNamed("/one_device");
              },
              child: const Text("Play on one device")),
          ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).navigateNamed("/room_was_created");
              },
              child: const Text("Play with random")),
          ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).navigateNamed("/wait_for_your_friend");
              },
              child: const Text("Play with friend")),
          ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).navigateNamed("/game_rules");
              },
              child: const Text("Game rules")),
        ],
      ),
    );
  }
}
