import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import '../../../core/values/game_colors.dart';
import '../../../core/widgets/button_widget.dart';
import '../../../core/widgets/wrapper_container.dart';
import '../../../main_router.dart';

class PreEdit extends StatefulWidget {
  const PreEdit({super.key});

  @override
  State<PreEdit> createState() => _PreEditState();
}

class _PreEditState extends State<PreEdit> {
  bool isX = true;

  @override
  Widget build(BuildContext context) {
    final playerController = TextEditingController();

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
              ))),
      body: WrapperContainer(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text(
                'Enter Player Names',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontFamily: GoogleFonts.permanentMarker().fontFamily,
                ),
              ),
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isX = true;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: isX ? GameColors.kWhitish : null,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        border: Border.all(color: GameColors.kWhitish),
                      ),
                      child: const Icon(
                        Icons.close,
                        size: 32,
                        color: GameColors.kBlue,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isX = false;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: isX ? null : GameColors.kWhitish,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        border: Border.all(color: GameColors.kWhitish),
                      ),
                      child: const Icon(
                        Icons.circle_outlined,
                        color: GameColors.kPurple,
                        size: 32,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              buildTextField(
                  hintText: 'Your Name',
                  isX: isX,
                  controller: playerController),
              SizedBox(height: 2.h),
              SizedBox(
                  width: double.infinity,
                  child: ButtonWidget(
                      onPressed: () {
                        if (playerController.text
                            .toLowerCase()
                            .trim()
                            .isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: GameColors.kForeground,
                              content: Text(
                                'Please fill your name',
                                style: TextStyle(
                                  color: GameColors.kWhitish,
                                  fontFamily:
                                      GoogleFonts.permanentMarker().fontFamily,
                                ),
                              ),
                            ),
                          );
                          return;
                        }
                        final you = playerController.text.isEmpty
                            ? 'You'
                            : playerController.text.toLowerCase().trim();
                        context.pushRoute(GameRouteSingle(
                            playerXName: isX ? you : 'AI',
                            playerOName: !isX ? you : 'AI',
                            isX: isX));
                      },
                      text: 'Start')),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField({
    required String hintText,
    required bool isX,
    void Function(String)? onChanged,
    required TextEditingController controller,
  }) {
    return TextField(
      cursorColor: isX ? GameColors.kWhitish : GameColors.kPurple,
      style: const TextStyle(color: GameColors.kWhitish),
      controller: controller,
      onChanged: onChanged,
      maxLength: 10,
      decoration: InputDecoration(
        counterText: '',
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(3.w)),
        ),
        fillColor: GameColors.kForeground,
        hintText: hintText,
        hintStyle: const TextStyle(color: GameColors.kBackground),
        prefixIcon: Icon(
          isX ? Icons.close : Icons.circle_outlined,
          color: isX ? GameColors.kBlue : GameColors.kPurple,
        ),
      ),
    );
  }
}
