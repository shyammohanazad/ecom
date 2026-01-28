import 'package:flutter/material.dart';

class MyAppTextFieldTheme {
  MyAppTextFieldTheme._();
  // LightTheme's Customized TextFieldTheme

  // LightTheme's Customized TextFieldTheme
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey.shade600,
    suffixIconColor: Colors.grey.shade600,
    labelStyle: TextStyle().copyWith(fontSize: 14, color: Colors.grey.shade800),
    errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle().copyWith(color: Colors.grey.shade800),
    filled: true,
    fillColor: Colors.grey.shade200,
    contentPadding: const EdgeInsets.symmetric(
      vertical: 12.0,
      horizontal: 16.0,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: BorderSide(width: 1.0, color: Colors.grey.shade300),
    ),
    hintStyle: TextStyle(color: Colors.grey.shade600, fontSize: 16.0),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: BorderSide(width: 1.0, color: Colors.grey.shade300),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: BorderSide(width: 2.0, color: Colors.grey.shade600),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: BorderSide(width: 2.0, color: Colors.red.shade700),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: BorderSide(width: 2.0, color: Colors.red.shade700),
    ),
  );

  // DarkTheme's Customized TextFieldTheme
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey.shade400,
    suffixIconColor: Colors.grey.shade400,
    labelStyle: TextStyle().copyWith(fontSize: 14, color: Colors.grey.shade400),
    errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle().copyWith(color: Colors.grey.shade400),
    filled: true,
    fillColor: Colors.grey.shade800,
    contentPadding: const EdgeInsets.symmetric(
      vertical: 12.0,
      horizontal: 16.0,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: BorderSide(width: 1.0, color: Colors.grey.shade300),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: BorderSide(width: 1.0, color: Colors.grey.shade300),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: BorderSide(width: 2.0, color: Colors.grey.shade400),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: BorderSide(width: 2.0, color: Colors.red.shade700),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: BorderSide(width: 2.0, color: Colors.red.shade700),
    ),
    hintStyle: TextStyle(color: Colors.grey.shade600, fontSize: 16.0),
  );
}
