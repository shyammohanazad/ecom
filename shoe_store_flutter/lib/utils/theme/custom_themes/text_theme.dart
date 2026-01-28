import 'package:flutter/material.dart';

class MyAppTextTheme {
  MyAppTextTheme._();

  // DarkTheme's Customized TextTheme

  static  TextTheme darkTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 16,
    ),

    titleLarge: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),

    bodyLarge: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),

    labelLarge: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 10,
      fontWeight: FontWeight.w500,
    ),
  );
  // LightTheme's Customized TextTheme
  static TextTheme lightTheme = TextTheme(
    // Copywith from default and modify colors, fontSizes, weights as needed
    headlineLarge: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 16,
    ),

    titleLarge: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),

    bodyLarge: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),

    labelLarge: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 10,
      fontWeight: FontWeight.w500,
    ),
  );
}
