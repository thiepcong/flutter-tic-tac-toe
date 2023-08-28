import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state_multi.freezed.dart';

@freezed
class GameStateMulti with _$GameStateMulti {
  GameStateMulti._();
  factory GameStateMulti({
    @Default([
      ['', '', ''],
      ['', '', ''],
      ['', '', '']
    ])
    List<List<String>> board,
    @Default('X') String currentPlayer,
    @Default('') String winner,
  }) = _GameStateMulti;
}
