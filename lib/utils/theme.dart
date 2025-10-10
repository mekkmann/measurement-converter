import 'package:converter/utils/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._(); // Private constructor, to avoid creating multiple instances

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.redAccent,
    ),
    textTheme: TTextTheme.lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.blueGrey,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
    ),
    textTheme: TTextTheme.darkTextTheme,
  );
}