import 'package:get/get.dart';
import 'package:slitherkiller/routes/app_routes.dart';
import 'package:slitherkiller/screens/game_screen.dart';

class AppPages {
  static final appRoutes = [
    GetPage(name: AppRoutes.game, page: () => SnakeGame()),
  ];
}
