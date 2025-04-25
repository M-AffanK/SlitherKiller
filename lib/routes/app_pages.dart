import 'package:get/get.dart';
import 'package:slitherkiller/routes/app_routes.dart';
import 'package:slitherkiller/screens/game_screen.dart';
import 'package:slitherkiller/screens/main_screen.dart';
import 'package:slitherkiller/screens/multiplayer_screen.dart';
import 'package:slitherkiller/screens/settings_screen.dart';
import 'package:slitherkiller/screens/login_screen.dart';

class AppPages {
  static final appRoutes = [
    GetPage(name: AppRoutes.game, page: () => SnakeGame()),
    GetPage(name: AppRoutes.main, page: () => MainScreen()),
    GetPage(name: AppRoutes.multiplayer, page: () => MultiplayerScreen()),
    GetPage(name: AppRoutes.setting, page: () => SettingsScreen()),
    GetPage(name: AppRoutes.login, page: () => LoginScreen()),
  ];
}
