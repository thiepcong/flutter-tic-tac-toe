import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/values/app_theme.dart';
import 'main_router.dart';
import 'modules/game_multi/repository/game_repository_multi.dart';
import 'modules/game_single/repository/game_repository_single.dart';
import 'modules/home/repository/home_repository.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class RouteApp extends StatefulWidget {
  const RouteApp({super.key});

  @override
  State<RouteApp> createState() => _RouteAppState();
}

class _RouteAppState extends State<RouteApp> {
  @override
  void initState() {
    super.initState();
    _appRouter = MainRouter(
      navigatorKey: navigatorKey,
    );
  }

  late MainRouter _appRouter;
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<HomeRepository>(
          create: (context) => HomeRepository(),
        ),
        RepositoryProvider<GameRepositoryMulti>(
          create: (context) => GameRepositoryMulti(),
        ),
        RepositoryProvider<GameRepositorySingle>(
          create: (context) => GameRepositorySingle(),
        ),
      ],
      child: MaterialApp.router(
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(
          navigatorObservers: () => [
            AutoRouteObserver(),
          ],
        ),
        theme: appTheme,
        localizationsDelegates: const [],
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
