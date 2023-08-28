import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state_single.freezed.dart';

@freezed
class GameStateSingle with _$GameStateSingle {
  GameStateSingle._();
  factory GameStateSingle({
    @Default([
      ['', '', ''],
      ['', '', ''],
      ['', '', '']
    ])
    List<List<String>> board,
    @Default('X') String currentPlayer,
    @Default('') String winner,
    @Default(false) bool checkWinner,
    @Default(false) bool checkDraw,
  }) = _GameStateSingle;
}
