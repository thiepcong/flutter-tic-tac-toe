import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../values/game_colors.dart';

class WrapperContainer extends StatelessWidget {
  const WrapperContainer({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.h,
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.w),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            GameColors.kGradient1,
            GameColors.kGradient2,
          ],
          stops: [0.5, 0.9],
        ),
      ),
      child: child,
    );
  }
}

Container gradientContainer = Container(
  width: double.infinity,
  padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.w),
  decoration: const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xff1e242d),
        Color(0xff28313D),
      ],
    ),
  ),
);
