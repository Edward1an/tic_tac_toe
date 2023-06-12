import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "AppearanceRoute")
class AppearanceScreen extends StatefulWidget {
  const AppearanceScreen({Key? key}) : super(key: key);

  @override
  State<AppearanceScreen> createState() => _AppearanceScreenState();
}

class _AppearanceScreenState extends State<AppearanceScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Appearance",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 600 / 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        width: 600 / 5.5,
                        height: 600 / 3.5,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 600 / 100),
                      const Text("Dark"),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                          width: 600 / 5.5,
                          height: 600 / 3.5,
                          color: Colors.white54),
                      const SizedBox(height: 600 / 100),
                      const Text("Light"),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 600 / 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Automatic"),
                Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    }),
              ],
            ),
            const SizedBox(height: 600 / 100),
            const Text(
              "Sets theme based on your device’s appearance mode",
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    ));
  }
}
