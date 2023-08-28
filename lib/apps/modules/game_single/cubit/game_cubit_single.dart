import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/algorithm/minimax_algorithm.dart';
import '../../../core/model/history_hive_model.dart';
import '../../../core/storage/history_box.dart';
import 'game_state_single.dart';

class GameCubitSingle extends Cubit<GameStateSingle> {
  GameCubitSingle() : super(GameStateSingle());

  void setBoard(List<List<String>> board) {
    emit(state.copyWith(board: board));
  }

  void setCurrentPlayer(String currentPlayer) {
    emit(state.copyWith(currentPlayer: currentPlayer));
  }

  void setWinner(String winner) {
    emit(state.copyWith(winner: winner));
  }

  void setCheckWinner(bool checkWinner) {
    emit(state.copyWith(checkWinner: checkWinner));
  }

  void setCheckDrawer(bool checkDraw) {
    emit(state.copyWith(checkDraw: checkDraw));
  }

  void bestMove(String playerXName, String playerOName, bool isX) {
    int bestScore = -1000;
    int row = -1;
    int col = -1;
    // final X = isX ? 'X' : 'O';
    final O = !isX ? 'X' : 'O';
    List<List<String>> board = List<List<String>>.from(
        state.board.map((row) => List<String>.from(row))).toList();
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (board[i][j].isEmpty) {
          board[i][j] = O;
          setBoard(board);
          int score = minimax(board, false, isX);
          board[i][j] = '';
          setBoard(board);
          if (score > bestScore) {
            bestScore = score;
            row = i;
            col = j;
          }
        }
      }
    }
    Future.delayed(const Duration(milliseconds: 500), () {
      if (row != -1 && col != -1) {
        onCellTap(row, col, playerXName, playerOName, isX);
      }
    });
  }

  void onCellTap(
      int row, int col, String playerXName, String playerOName, bool isX) {
    final X = isX ? 'X' : 'O';
    final O = !isX ? 'X' : 'O';
    List<List<String>> board = List<List<String>>.from(
        state.board.map((row) => List<String>.from(row))).toList();
    // String currentPlayer = state.currentPlayer;
    if (board[row][col].isEmpty) {
      board[row][col] = state.currentPlayer;
      setBoard(board);
      if (checkWin(board, state.currentPlayer)) {
        setWinner(state.currentPlayer);
        setCheckWinner(true);
        HistoryBox.setHistory(HistoryModelHive(
            playerXName: playerXName,
            playerOName: playerOName,
            winner: state.winner));
      } else if (checkDraw(board)) {
        setWinner('draw');
        setCheckDrawer(true);
        HistoryBox.setHistory(HistoryModelHive(
            playerXName: playerXName,
            playerOName: playerOName,
            winner: state.winner));
      } else {
        setCurrentPlayer(state.currentPlayer == X ? O : X);
        if (state.currentPlayer == O) {
          bestMove(playerXName, playerOName, isX);
        }
      }
    }
  }

  void resetGame(bool isX) {
    setBoard(List.generate(3, (_) => List.filled(3, '')));
    setCurrentPlayer(isX ? 'X' : 'O');
    emit(state.copyWith(checkDraw: false, checkWinner: false));
  }

  int minimax(List<List<String>> board, bool isMaximizing, bool isX) {
    final X = isX ? 'X' : 'O';
    final O = !isX ? 'X' : 'O';
    if (checkWin(board, 'O')) {
      return 1;
    } else if (checkWin(board, 'X')) {
      return -1;
    } else if (checkDraw(board)) {
      return 0;
    }

    if (isMaximizing) {
      int bestScore = -1000;
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          if (board[i][j].isEmpty) {
            board[i][j] = O;
            setBoard(board);
            int score = minimax(board, false, isX);
            board[i][j] = '';
            setBoard(board);
            bestScore = max(score, bestScore);
          }
        }
      }
      return bestScore;
    } else {
      int bestScore = 1000;
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          if (board[i][j].isEmpty) {
            board[i][j] = X;
            setBoard(board);
            int score = minimax(board, true, isX);
            board[i][j] = '';
            setBoard(board);
            bestScore = min(score, bestScore);
          }
        }
      }
      return bestScore;
    }
  }
}
