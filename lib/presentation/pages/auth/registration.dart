import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "RegistrationRoute")
class RegistrationWidget extends StatelessWidget {
  const RegistrationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        child: ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).pushNamed("/sing_in");
            },
            child: const Text("sign in")));
  }
}
