import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "RoomWasCreatedRoute")
class RoomWasCreatedScreen extends StatelessWidget {
  const RoomWasCreatedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Room was created. The match will start in few seconds"),
            ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).pushNamed("/with_random");
                },
                child: const Text("Match"))
          ],
        ),
      ),
    );
  }
}
