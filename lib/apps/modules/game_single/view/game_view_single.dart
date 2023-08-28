import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import '../../../core/algorithm/minimax_algorithm.dart';
import '../../../core/values/game_colors.dart';
import '../../../core/widgets/alert_dialog.dart';
import '../../../core/widgets/history_modal.dart';
import '../../../core/widgets/scoreboard.dart';
import '../../../core/widgets/wrapper_container.dart';
import '../cubit/game_cubit_single.dart';
import '../cubit/game_state_single.dart';

class GameViewSingle extends StatefulWidget {
  const GameViewSingle(
      {Key? key,
      required this.playerXName,
      required this.playerOName,
      required this.isX})
      : super(key: key);
  final String playerXName;
  final String playerOName;
  final bool isX;
  @override
  GameViewSingleState createState() => GameViewSingleState();
}

class GameViewSingleState extends State<GameViewSingle> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          GameCubitSingle()..setCurrentPlayer(widget.isX ? 'X' : 'O'),
      child: _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<GameCubitSingle, GameStateSingle>(
          listenWhen: (previous, current) =>
              previous.checkWinner != current.checkWinner,
          listener: (context, state) {
            if (state.checkWinner) {
              showGameAlertDialog("Player ${state.currentPlayer} wins!",
                  context, state.currentPlayer, null);
              context.read<GameCubitSingle>().resetGame(widget.isX);
            }
          },
        ),
        BlocListener<GameCubitSingle, GameStateSingle>(
          listenWhen: (previous, current) =>
              previous.checkDraw != current.checkDraw,
          listener: (context, state) {
            if (state.checkDraw) {
              showGameAlertDialog("It's a draw!", context, "draw", null);
              context.read<GameCubitSingle>().resetGame(widget.isX);
            }
          },
        )
      ],
      child: BlocBuilder<GameCubitSingle, GameStateSingle>(
          builder: (context, state) {
        final cubit = context.read<GameCubitSingle>();
        return Scaffold(
          appBar: AppBar(
            backgroundColor: GameColors.kGradient1,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_outlined,
                color: GameColors.kWhitish,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  buildHistoryBottomSheet(context);
                },
                icon: const Icon(
                  Icons.history_outlined,
                  color: GameColors.kWhitish,
                ),
              ),
            ],
          ),
          body: WrapperContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ScoreBoard(
                  playerXName: widget.playerXName,
                  playerOName: widget.playerOName,
                  playerXScore: checkWin(state.board, 'X') ? 1 : 0,
                  playerOScore: checkWin(state.board, 'O') ? 1 : 0,
                  isTurn: state.currentPlayer == 'X',
                ),
                SizedBox(height: 15.h),
                Container(
                  margin: EdgeInsets.all(4.w),
                  child: GridView.builder(
                    padding: const EdgeInsets.all(5),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      int row = index ~/ 3;
                      int col = index % 3;

                      return GestureDetector(
                        onTap: () => cubit.onCellTap(row, col,
                            widget.playerXName, widget.playerOName, widget.isX),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                            child: Text(
                              state.board[row][col],
                              style: TextStyle(
                                  fontSize: 50,
                                  fontFamily:
                                      GoogleFonts.permanentMarker().fontFamily,
                                  fontWeight: FontWeight.bold,
                                  color: state.board[row][col] == 'X'
                                      ? GameColors.kBlue
                                      : GameColors.kPurple),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: 9,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
