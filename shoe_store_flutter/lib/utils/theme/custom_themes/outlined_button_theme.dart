import 'package:flutter/material.dart';

class MyAppOutlinedButtonTheme {
  // DarkTheme's Customized OutlinedButtonTheme

  MyAppOutlinedButtonTheme._(); // Private constructor to prevent instantiation

  // LightTheme's Customized OutlinedButtonTheme
  static final OutlinedButtonThemeData lightTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.black),
      textStyle: TextStyle(
        fontSize: 16.0,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    ),
  );

  // DarkTheme's Customized OutlinedButtonTheme
  static final OutlinedButtonThemeData darkTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      side: const BorderSide(color: Colors.white),
      textStyle: TextStyle(
        fontSize: 16.0,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    ),
  );
}
