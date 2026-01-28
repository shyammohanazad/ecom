import 'package:flutter/material.dart';

class MyAppAppbarTheme {
  // LightTheme's Customized AppBarTheme

  MyAppAppbarTheme._(); // Private constructor to prevent instantiation

  static final AppBarThemeData lightAppBarTheme = AppBarThemeData(
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    foregroundColor: Colors.black,
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0.0,
    titleTextStyle: const TextStyle(
      fontFamily: 'Jost',
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    iconTheme: const IconThemeData(color: Colors.black, size: 24.0),
    actionsIconTheme: IconThemeData(color: Colors.grey.shade800, size: 24.0),
  );

  // DarkTheme's Customized AppBarTheme

  static final AppBarThemeData darkAppBarTheme = AppBarThemeData(
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.white,
    surfaceTintColor: Colors.transparent,
    scrolledUnderElevation: 0,
    elevation: 4.0,
    centerTitle: true,
    titleTextStyle: const TextStyle(
      fontFamily: 'Jost',
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    iconTheme: const IconThemeData(color: Colors.white, size: 24.0),
    actionsIconTheme: IconThemeData(color: Colors.grey.shade300, size: 24.0),
  );
  // static final AppBarThemeData darkAppBarTheme = AppBarThemeData(
  //   backgroundColor: Colors.black,
  //   foregroundColor: Colors.white,
  //   elevation: 4.0,
  //   centerTitle: true,
  //   titleTextStyle: const TextStyle(
  //     fontFamily: 'Jost',
  //     fontSize: 20.0,
  //     fontWeight: FontWeight.bold,
  //     color: Colors.white,
  //   ),
  //   iconTheme: const IconThemeData(color: Colors.white, size: 24.0),
  // );
}
