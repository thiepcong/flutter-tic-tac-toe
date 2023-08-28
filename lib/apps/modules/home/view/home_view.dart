import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/apps/modules/game_single/view/pre_edit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../core/widgets/wrapper_container.dart';
import '../widget/home_view_buttons.dart';
import '../../game_multi/view/players_names.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WrapperContainer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tic Tac Toe',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.permanentMarker().fontFamily,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15.h),
              HomeViewButtons(
                btnText: 'Single Player',
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const GameViewSingle(
                  //             playerXName: "You", playerOName: "AI")));
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PreEdit()));
                },
              ),
              SizedBox(height: 2.h),
              HomeViewButtons(
                btnText: 'Multiplayer',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PlayerNames()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
