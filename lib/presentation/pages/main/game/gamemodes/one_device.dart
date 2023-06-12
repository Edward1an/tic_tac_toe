import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "OneDeviceRoute")
class OneDeviceScreen extends StatelessWidget {
  const OneDeviceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("One Device"),
      ),
    );
  }
}
