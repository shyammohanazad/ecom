import 'package:ecomm_store_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecomm_store_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecomm_store_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecomm_store_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:ecomm_store_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecomm_store_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:ecomm_store_app/utils/theme/custom_themes/text_theme.dart';
import 'package:ecomm_store_app/utils/theme/custom_themes/textfield_theme.dart';
import 'package:flutter/material.dart';

class MyAppThemeManager {
  // Theme related utilities and methods would go here

  MyAppThemeManager._(); // Private constructor to prevent instantiation

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Jost',
    brightness: Brightness.light,
    primaryColor: const Color.fromARGB(255, 26, 184, 189),
    scaffoldBackgroundColor: const Color.fromARGB(255, 224, 231, 231),
    textTheme: MyAppTextTheme.lightTheme,
    elevatedButtonTheme: MyAppElevatedButtonTheme.lightElevatedButtonThemeData,
    inputDecorationTheme: MyAppTextFieldTheme.lightInputDecorationTheme,
    appBarTheme: MyAppAppbarTheme.lightAppBarTheme,
    checkboxTheme: MyAppCheckboxTheme.lightTheme,
    bottomSheetTheme: MyAppBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: MyAppOutlinedButtonTheme.lightTheme,
    chipTheme: MyAppChipTheme.lightChipTheme, 
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Jost',
    brightness: Brightness.dark,
    primaryColor: const Color.fromARGB(255, 77, 12, 12),
    scaffoldBackgroundColor: Colors.black,
    textTheme: MyAppTextTheme.darkTheme,
    elevatedButtonTheme: MyAppElevatedButtonTheme.darkElevatedButtonThemeData,
    inputDecorationTheme: MyAppTextFieldTheme.darkInputDecorationTheme,
    appBarTheme: MyAppAppbarTheme.darkAppBarTheme,
    checkboxTheme: MyAppCheckboxTheme.darkTheme,
    bottomSheetTheme: MyAppBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: MyAppOutlinedButtonTheme.darkTheme,
    chipTheme: MyAppChipTheme.darkChipTheme,
  );
}
