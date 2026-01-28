import 'package:flutter/material.dart';

class MyAppElevatedButtonTheme {
  MyAppElevatedButtonTheme._();

  // LightTheme's Customized ElevatedButtonThemeData

  static final ElevatedButtonThemeData lightElevatedButtonThemeData =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF1AB8BD),
          foregroundColor: const Color(0xFFFFFFFF),
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.white70,
          side: BorderSide(color: Colors.blueGrey.shade700, width: 1.5),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          textStyle: const TextStyle(
            fontFamily: 'Jost',
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
  // DarkTheme's Customized ElevatedButtonThemeData

  static final ElevatedButtonThemeData darkElevatedButtonThemeData =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF000000),
          foregroundColor: const Color(0xFFFFFFFF),
          disabledBackgroundColor: const Color(0xFF9E9E9E),
          disabledForegroundColor: const Color(0xFFBDBDBD),
          side: BorderSide(
            color: const Color.fromARGB(255, 172, 183, 188),
            width: 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          textStyle: const TextStyle(
            fontFamily: 'Jost',
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
}
