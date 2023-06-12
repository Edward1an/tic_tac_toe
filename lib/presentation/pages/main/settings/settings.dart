import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "SettingsRoute")
class SettingsWidget extends StatelessWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 50),
          ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed("/profile");
              },
              child: const Text("Account")),
          ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed("/appearance");
              },
              child: const Text("Appearance")),
          ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed("/language");
              },
              child: const Text("Language")),
          ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed("/settings_register");
              },
              child: const Text("Register")),
        ],
      ),
    );
  }
}
