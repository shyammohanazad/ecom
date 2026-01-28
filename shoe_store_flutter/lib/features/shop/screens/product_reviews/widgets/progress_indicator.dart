import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/device/device_utillity.dart';

class MyRatingProgressIndicator extends StatelessWidget {
  const MyRatingProgressIndicator({super.key, required this.text, required this.value});

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Text(text, style: Theme.of(context).textTheme.bodyMedium,)),
        Expanded(flex: 11, child: SizedBox(width: MyAppDeviceUtility.getScreenWidth(context)*0.8,
          child: LinearProgressIndicator(
            value: 0.5,
            minHeight: 11,
            backgroundColor: MyAppColors.grey,
            valueColor: AlwaysStoppedAnimation(MyAppColors.primaryColor),
            borderRadius: BorderRadius.circular(7),
          ),
        ))
      ],
    );
  }
}
