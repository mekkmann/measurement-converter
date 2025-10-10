import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._(); // Private constructor, to avoid creating multiple instances

  static TextTheme lightTextTheme = TextTheme(
      bodyLarge: TextStyle().copyWith(color: Colors.black),
      bodyMedium: TextStyle().copyWith(color: Colors.black),
      bodySmall: TextStyle().copyWith(color: Colors.black),

      displayLarge: TextStyle().copyWith(color: Colors.black),
      displayMedium: TextStyle().copyWith(color: Colors.black),
      displaySmall: TextStyle().copyWith(color: Colors.black),

      headlineLarge: TextStyle().copyWith(color: Colors.black),
      headlineMedium: TextStyle().copyWith(color: Colors.black),
      headlineSmall: TextStyle().copyWith(color: Colors.black),

      labelLarge: TextStyle().copyWith(color: Colors.black),
      labelMedium: TextStyle().copyWith(color: Colors.black),
      labelSmall: TextStyle().copyWith(color: Colors.black),

      titleLarge: TextStyle().copyWith(color: Colors.black),
      titleMedium: TextStyle().copyWith(color: Colors.black),
      titleSmall: TextStyle().copyWith(color: Colors.black),
  );
  static TextTheme darkTextTheme = TextTheme(
    bodyLarge: TextStyle().copyWith(color: Colors.white),
    bodyMedium: TextStyle().copyWith(color: Colors.white),
    bodySmall: TextStyle().copyWith(color: Colors.white),

    displayLarge: TextStyle().copyWith(color: Colors.white),
    displayMedium: TextStyle().copyWith(color: Colors.white),
    displaySmall: TextStyle().copyWith(color: Colors.white),

    headlineLarge: TextStyle().copyWith(color: Colors.white),
    headlineMedium: TextStyle().copyWith(color: Colors.white),
    headlineSmall: TextStyle().copyWith(color: Colors.white),

    labelLarge: TextStyle().copyWith(color: Colors.white),
    labelMedium: TextStyle().copyWith(color: Colors.white),
    labelSmall: TextStyle().copyWith(color: Colors.white),

    titleLarge: TextStyle().copyWith(color: Colors.white),
    titleMedium: TextStyle().copyWith(color: Colors.white),
    titleSmall: TextStyle().copyWith(color: Colors.white),
  );
}