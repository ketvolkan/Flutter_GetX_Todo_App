import 'package:flutter/material.dart';

import '../../core/variables/colors.dart';

class AppThemes {
  static ThemeData light = ThemeData(
    primaryColorDark: Color.fromARGB(255, 23, 102, 116),
    primaryColor: primaryColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      brightness: Brightness.light,
      primary: primaryColor,
      secondary: const Color.fromARGB(30, 53, 56, 151), // Your accent color
    ),
    toggleableActiveColor: toggleableActiveColor,
    iconTheme: const IconThemeData(color: primaryColor), //Default Icon Color

    scaffoldBackgroundColor: const Color(0xFFF6F6F6),
    appBarTheme: const AppBarTheme(
      backgroundColor: loginTheme,
      foregroundColor: primaryColorDark,
      centerTitle: true,
    ),
  );

  static ThemeData dark = ThemeData(
    primaryColorDark: primaryColorDark,
    primaryColor: primaryColorDark,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      brightness: Brightness.light,
      primary: primaryColorDark,

      secondary: const Color.fromARGB(30, 53, 56, 151), // Your accent color
    ),
    toggleableActiveColor: toggleableActiveColor,
    iconTheme: const IconThemeData(color: primaryColor), //Default Icon Color

    scaffoldBackgroundColor: darkModeBg,
    appBarTheme: const AppBarTheme(
      backgroundColor: loginTheme,
      foregroundColor: primaryColorDark,
      centerTitle: true,
    ),
  );
}
