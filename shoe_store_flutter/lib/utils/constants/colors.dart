import 'package:flutter/material.dart';

class MyAppColors {
  MyAppColors._(); // Private constructor to prevent instantiation

  //  App Basic Colors
  static const Color primaryColor = Color.fromARGB(255, 26, 184, 189);
  static const Color secondary = Color.fromARGB(255, 77, 12, 12);
  static const Color accent = Color(0xFFFFC107); // Amber

  // Text Colors
  static const Color textPrimary = Color(0xFF212121); // Dark Grey
  static const Color textSecondary = Color(0xFF757575); // Medium Grey
  static const Color textOnPrimary = Colors.white;
  static const Color textOnSecondary = Colors.white;

  // Background Colors
  static const Color backgroundLight = Colors.white;
  static const Color backgroundDark = Color.fromARGB(255, 0, 0, 0);

  // Background Container Colors
  static const Color containerLight = Color(0xFFF5F5F5); // Light Grey
  static const Color containerDark = Color(0xFF303030); // Dark Grey

  // Button Colors
  static const Color buttonPrimary = primaryColor;
  static const Color buttonSecondary = secondary;
  static const Color buttonDisabled = Color(0xFFBDBDBD); // Grey

  // Border Colors
  static const Color borderPrimary = Color(0xFFE0E0E0); // Light Grey
  static const Color borderSecondary = Color(0xFF424242); // Dark

  // Error and Validation Colors
  static const Color error = Color(0xFFF44336); // Red
  static const Color success = Color(0xFF4CAF50); // Green
  static const Color warning = Color(0xFFFF9800); // Orange
  static const Color info = Color(0xFF2196F3); // Blue

  // Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4f4f4f);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color softGrey = Color(0xFFFAFAFA);
  static const Color white = Colors.white;

  // Gradient Colors
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF26C6DA), Color(0xFF00ACC1), Color(0xFF00838F)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [Color(0xFF7B1FA2), Color(0xFFD81B60), Color(0xFFE91E63)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // favourite icons COlors
  static const addToFav = Color.fromARGB(255, 251, 4, 164);
}
