import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'app_routes.dart';
import 'modules/game_multi/view/game_view_multi.dart';
import 'modules/game_single/view/game_view_single.dart';
import 'modules/home/view/home_view.dart';
part 'main_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeView, path: Routes.home, initial: true),
    AutoRoute(page: GameViewSingle, path: Routes.gameSingleView),
    AutoRoute(page: GameViewMulti, path: Routes.gameMultiView),
  ],
)
class MainRouter extends _$MainRouter {
  MainRouter({GlobalKey<NavigatorState>? navigatorKey}) : super(navigatorKey);
}
