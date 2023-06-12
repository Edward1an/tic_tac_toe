import 'package:flutter/material.dart';

import '../common/navigation/auto_router.dart';

class Application extends StatelessWidget {
  Application({Key? key}) : super(key: key);
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false);
  }
}
