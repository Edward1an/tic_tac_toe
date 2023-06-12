import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "AddFriendRoute")
class AddFriendWidget extends StatelessWidget {
  const AddFriendWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Dialog.fullscreen(
      child: Text("add friend"),
    );
  }
}
