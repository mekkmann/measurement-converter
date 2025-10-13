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
}