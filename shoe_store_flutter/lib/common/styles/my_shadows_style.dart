import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class MyShadowsStyle {
  static final verticalProductShadow = BoxShadow(
    color: MyAppColors.darkGrey.withValues(alpha: 0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: MyAppColors.darkGrey.withValues(alpha: 0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );
}
