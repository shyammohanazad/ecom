import 'package:flutter/material.dart';

class MyAppCheckboxTheme {
  // LightTheme's Customized CheckboxTheme

  MyAppCheckboxTheme._(); // Private constructor to prevent instantiation

  static CheckboxThemeData lightTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      }
      return Colors.black;
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const Color(0xFF1AB8BD);
      }
      return Colors.transparent;
    }),
  );

  // DarkTheme's Customized CheckboxTheme

  static CheckboxThemeData darkTheme = CheckboxThemeData(
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      }
      return Colors.black;
    }),
    fillColor: WidgetStateProperty.resolveWith( (states) {
      if (states.contains(WidgetState.selected)) {
        return const Color(0xFF000000);
      }
      return Colors.transparent;
    }),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
  );
}
