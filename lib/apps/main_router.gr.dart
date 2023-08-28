// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'main_router.dart';

class _$MainRouter extends RootStackRouter {
  _$MainRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    GameRouteSingle.name: (routeData) {
      final args = routeData.argsAs<GameRouteSingleArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: GameViewSingle(
          key: args.key,
          playerXName: args.playerXName,
          playerOName: args.playerOName,
          isX: args.isX,
        ),
      );
    },
    GameRouteMulti.name: (routeData) {
      final args = routeData.argsAs<GameRouteMultiArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: GameViewMulti(
          key: args.key,
          playerXName: args.playerXName,
          playerOName: args.playerOName,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'home',
          fullMatch: true,
        ),
        RouteConfig(
          HomeRoute.name,
          path: 'home',
        ),
        RouteConfig(
          GameRouteSingle.name,
          path: 'game_single_view',
        ),
        RouteConfig(
          GameRouteMulti.name,
          path: 'game_multi_view',
        ),
      ];
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [GameViewSingle]
class GameRouteSingle extends PageRouteInfo<GameRouteSingleArgs> {
  GameRouteSingle({
    Key? key,
    required String playerXName,
    required String playerOName,
    required bool isX,
  }) : super(
          GameRouteSingle.name,
          path: 'game_single_view',
          args: GameRouteSingleArgs(
            key: key,
            playerXName: playerXName,
            playerOName: playerOName,
            isX: isX,
          ),
        );

  static const String name = 'GameRouteSingle';
}

class GameRouteSingleArgs {
  const GameRouteSingleArgs({
    this.key,
    required this.playerXName,
    required this.playerOName,
    required this.isX,
  });

  final Key? key;

  final String playerXName;

  final String playerOName;

  final bool isX;

  @override
  String toString() {
    return 'GameRouteSingleArgs{key: $key, playerXName: $playerXName, playerOName: $playerOName, isX: $isX}';
  }
}

/// generated route for
/// [GameViewMulti]
class GameRouteMulti extends PageRouteInfo<GameRouteMultiArgs> {
  GameRouteMulti({
    Key? key,
    required String playerXName,
    required String playerOName,
  }) : super(
          GameRouteMulti.name,
          path: 'game_multi_view',
          args: GameRouteMultiArgs(
            key: key,
            playerXName: playerXName,
            playerOName: playerOName,
          ),
        );

  static const String name = 'GameRouteMulti';
}

class GameRouteMultiArgs {
  const GameRouteMultiArgs({
    this.key,
    required this.playerXName,
    required this.playerOName,
  });

  final Key? key;

  final String playerXName;

  final String playerOName;

  @override
  String toString() {
    return 'GameRouteMultiArgs{key: $key, playerXName: $playerXName, playerOName: $playerOName}';
  }
}
