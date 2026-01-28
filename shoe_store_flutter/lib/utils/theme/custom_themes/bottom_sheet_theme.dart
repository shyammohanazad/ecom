import 'package:flutter/material.dart';

class MyAppBottomSheetTheme {
  // Your existing code here

  MyAppBottomSheetTheme._(); // Private constructor to prevent instantiation


// LightTheme's Customized BottomSheetTheme
  static final BottomSheetThemeData lightBottomSheetTheme =
      BottomSheetThemeData(
        showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: BoxConstraints(minWidth: double.infinity),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16.0),
      ),
    ),
    elevation: 8.0,
  );


//  DarkTheme's Customized BottomSheetTheme
  static final BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    modalBackgroundColor: Colors.grey[900],
    backgroundColor: Colors.grey[900],
    constraints: BoxConstraints(minWidth: double.infinity),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16.0),
      ),
    ),
    elevation: 8.0,
  );
} 