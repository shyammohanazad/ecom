import 'package:flutter/material.dart';

class MyAppChipTheme {
  // DarkTheme's Customized ChipTheme
  MyAppChipTheme._(); // Private constructor to prevent instantiation

  // LightTheme's Customized ChipTheme
  static ChipThemeData lightChipTheme = ChipThemeData(
    backgroundColor: const Color(0xFFE0E0E0),
    disabledColor: const Color(0xFFBDBDBD),
    selectedColor: const Color(0xFF1AB8BD),
    secondarySelectedColor: const Color(0xFF1AB8BD),
    labelStyle: const TextStyle(color: Colors.black),
    secondaryLabelStyle: const TextStyle(color: Colors.black),
    brightness: Brightness.light,
    checkmarkColor: Colors.white,
  );

  // DarkTheme's Customized ChipTheme
  static ChipThemeData darkChipTheme = ChipThemeData(
    backgroundColor: const Color(0xFF1E1E1E),
    disabledColor: const Color(0xFF3A3A3A),
    selectedColor: const Color(0xFF000000),
    secondarySelectedColor: const Color(0xFF000000),
    labelStyle: const TextStyle(color: Colors.white),
    secondaryLabelStyle: const TextStyle(color: Colors.white),
    brightness: Brightness.dark,
    checkmarkColor: Colors.white,
  );
}
