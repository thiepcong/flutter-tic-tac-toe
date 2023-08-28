
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../core/values/game_colors.dart';

class HomeViewButtons extends StatelessWidget {
  const HomeViewButtons(
      {super.key, required this.btnText, required this.onPressed});
  final String btnText;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.w,
      height: 8.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: GameColors.kForeground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          btnText,
          style: TextStyle(
            color: GameColors.kWhitish,
            fontFamily: GoogleFonts.permanentMarker().fontFamily,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}