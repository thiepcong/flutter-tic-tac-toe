import 'package:flutter/material.dart';

import 'game_colors.dart';

final appTheme = ThemeData(
  primarySwatch: GameColors.colorPrimarySwatch,
  appBarTheme: const AppBarTheme(backgroundColor: GameColors.c359EC7_primary),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  brightness: Brightness.light,
  primaryColor: GameColors.c359EC7_primary,
  colorScheme: const ColorScheme.light(
    background: GameColors.cFFFFFF_surface,
    surface: GameColors.cFFFFFF_surface,
  ),
  dividerColor: GameColors.cE4E4E4_divider,
  dialogTheme: const DialogTheme(
    shape: BeveledRectangleBorder(),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    sizeConstraints: BoxConstraints.tight(const Size(70, 70)),
  ),
);
