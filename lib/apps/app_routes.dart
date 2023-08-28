abstract class Routes {
  const Routes._();

  static const home = _Paths.home;

  static const gameSingleView = _Paths.gameSingleView;

  static const gameMultiView = _Paths.gameMultiView;

  static const playerNames = _Paths.playerNames;

  static const editPre = _Paths.editPre;
}

abstract class _Paths {
  static const home = 'home';

  static const gameSingleView = 'game_single_view';

  static const gameMultiView = 'game_multi_view';

  static const playerNames = 'player_names';

  static const editPre = 'edit_pre';
}
