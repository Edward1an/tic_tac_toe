import 'package:auto_route/auto_route.dart';
import 'package:tic_tac_toe/presentation/pages/auth/registration.dart';
import 'package:tic_tac_toe/presentation/pages/auth/sing_in.dart';
import 'package:tic_tac_toe/presentation/pages/main/connection/add_friend.dart';
import 'package:tic_tac_toe/presentation/pages/main/connection/connection.dart';
import 'package:tic_tac_toe/presentation/pages/main/connection/friends.dart';
import 'package:tic_tac_toe/presentation/pages/main/connection/notifications.dart';
import 'package:tic_tac_toe/presentation/pages/main/game/friends_list.dart';
import 'package:tic_tac_toe/presentation/pages/main/game/game.dart';
import 'package:tic_tac_toe/presentation/pages/main/game/game_rules.dart';
import 'package:tic_tac_toe/presentation/pages/main/game/gamemodes/one_device.dart';
import 'package:tic_tac_toe/presentation/pages/main/game/gamemodes/with_friend.dart';
import 'package:tic_tac_toe/presentation/pages/main/game/gamemodes/with_random.dart';
import 'package:tic_tac_toe/presentation/pages/main/game/room_was_created.dart';
import 'package:tic_tac_toe/presentation/pages/main/game/wait_for_your_friend.dart';
import 'package:tic_tac_toe/presentation/pages/main/main_screen.dart';
import 'package:tic_tac_toe/presentation/pages/main/settings/appearance.dart';
import 'package:tic_tac_toe/presentation/pages/main/settings/language.dart';
import 'package:tic_tac_toe/presentation/pages/main/settings/profile.dart';
import 'package:tic_tac_toe/presentation/pages/main/settings/settings.dart';
import 'package:tic_tac_toe/presentation/pages/main/settings/settings_register.dart';

part 'auto_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OneDeviceRoute.page, path: "/one_device"),
        AutoRoute(page: WithRandomRoute.page, path: "/with_random"),
        AutoRoute(
          page: RoomWasCreatedRoute.page,
          path: "/room_was_created",
        ),
        AutoRoute(page: WithFriendRoute.page, path: "/with_friend"),
        AutoRoute(
          page: WaitForYourFriendRoute.page,
          path: "/wait_for_your_friend",
        ),
        AutoRoute(
          page: FriendListRoute.page,
          path: "/friend_list",
        ),
        AutoRoute(page: GameRulesRoute.page, path: "/game_rules"),
        AutoRoute(page: RegistrationRoute.page, path: "/registration"),
        AutoRoute(page: SingInRoute.page, initial: true, path: "/sing_in"),
        AutoRoute(page: MainScreenRoute.page, path: "/main", children: [
          AutoRoute(page: SettingsRoute.page, path: "settings"),
          AutoRoute(page: ConnectionRoute.page, path: "connection", children: [
            AutoRoute(page: FriendsRoute.page, path: "friends", children: [
              AutoRoute(page: AddFriendRoute.page, path: "add_friend")
            ]),
            AutoRoute(page: NotificationsRoute.page, path: "notifications"),
          ]),
          AutoRoute(page: GameScreenRoute.page, path: "game"),
        ]),
        AutoRoute(page: ProfileRoute.page, path: "/profile"),
        AutoRoute(page: AppearanceRoute.page, path: "/appearance"),
        AutoRoute(page: SettingsRegisterRoute.page, path: "/settings_register"),
        AutoRoute(page: LanguageRoute.page, path: "/language")
      ];
}
