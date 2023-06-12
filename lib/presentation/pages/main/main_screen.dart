import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/common/navigation/auto_router.dart';

@RoutePage(name: "MainScreenRoute")
class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.cast_connected),
                  label: "Connection",
                  backgroundColor: Colors.green),
              BottomNavigationBarItem(
                  icon: Icon(Icons.videogame_asset),
                  label: "Game",
                  backgroundColor: Colors.deepOrange),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "Settings",
                  backgroundColor: Colors.redAccent),
            ]);
      },
      routes: const [FriendsRoute(), GameScreenRoute(), SettingsRoute()],
    );
  }
}
