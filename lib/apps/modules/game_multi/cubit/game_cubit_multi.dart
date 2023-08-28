import 'package:flutter_bloc/flutter_bloc.dart';
import 'game_state_multi.dart';

class GameCubitMulti extends Cubit<GameStateMulti> {
  GameCubitMulti() : super(GameStateMulti());

  void setBoard(List<List<String>> board) {
    emit(state.copyWith(board: board));
  }

  void setCurrentPlayer(String currentPlayer) {
    emit(state.copyWith(currentPlayer: currentPlayer));
  }

  void setWinner(String winner) {
    emit(state.copyWith(winner: winner));
  }
}
