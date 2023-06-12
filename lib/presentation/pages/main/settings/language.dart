import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "LanguageRoute")
class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

List<String> languages = ["Ukrainian", "English", "German"];

class _LanguageScreenState extends State<LanguageScreen> {
  String currentLang = languages[1];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              RadioListTile(
                  title: const Text("Ukrainian"),
                  value: languages[0],
                  groupValue: currentLang,
                  onChanged: (value) {
                    setState(() {
                      currentLang = value.toString();
                    });
                  }),
              RadioListTile(
                  title: const Text("English"),
                  value: languages[1],
                  groupValue: currentLang,
                  onChanged: (value) {
                    setState(() {
                      currentLang = value.toString();
                    });
                  }),
              RadioListTile(
                  title: const Text("German"),
                  value: languages[2],
                  groupValue: currentLang,
                  onChanged: (value) {
                    setState(() {
                      currentLang = value.toString();
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
