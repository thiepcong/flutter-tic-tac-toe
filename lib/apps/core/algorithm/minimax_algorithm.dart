import 'dart:math';

bool checkWin(List<List<String>> board, String player) {
  for (int i = 0; i < 3; i++) {
    if (board[i][0] == player &&
        board[i][1] == player &&
        board[i][2] == player) {
      return true; // Row win
    }
    if (board[0][i] == player &&
        board[1][i] == player &&
        board[2][i] == player) {
      return true;
    }
  }
  if (board[0][0] == player && board[1][1] == player && board[2][2] == player) {
    return true;
  }
  if (board[0][2] == player && board[1][1] == player && board[2][0] == player) {
    return true;
  }
  return false;
}

bool checkDraw(List<List<String>> board) {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (board[i][j].isEmpty) {
        return false;
      }
    }
  }
  return true;
}

int minimax(List<List<String>> board, bool isMaximizing) {
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
          board[i][j] = 'O';
          int score = minimax(board, false);
          board[i][j] = '';
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
          board[i][j] = 'X';
          int score = minimax(board, true);
          board[i][j] = '';
          bestScore = min(score, bestScore);
        }
      }
    }
    return bestScore;
  }
}
