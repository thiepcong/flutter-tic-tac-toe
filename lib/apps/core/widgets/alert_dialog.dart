import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../values/game_colors.dart';
import 'button_widget.dart';

void showGameAlertDialog(String message, BuildContext context, String winner,
    void Function()? resetGame) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: GameColors.kLighterForeground,
        elevation: 0,
        title: Text(
          "Game Over",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: GoogleFonts.permanentMarker().fontFamily,
          ),
        ),
        content: Text(
          message,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: GoogleFonts.permanentMarker().fontFamily,
          ),
        ),
        actions: [
          ButtonWidget(
            onPressed: () {
              Navigator.of(context).pop();
              if (resetGame != null) resetGame;
            },
            winner: winner,
            text: 'Play Again',
          ),
        ],
      );
    },
  );
}
