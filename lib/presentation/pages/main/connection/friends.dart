import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "FriendsRoute")
class FriendsWidget extends StatelessWidget {
  const FriendsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return const Dialog.fullscreen(
                        child: SizedBox(
                            height: double.maxFinite,
                            child: Text("add friend")),
                      );
                    });
              },
              child: const Text("Add friend")),
          const Expanded(child: Center(child: Text("Friends"))),
          const Expanded(child: AutoRouter()),
        ],
      ),
    );
  }
}
