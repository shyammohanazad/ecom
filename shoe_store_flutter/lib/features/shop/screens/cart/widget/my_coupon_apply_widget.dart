import 'package:ecomm_store_app/common/widgets/custom_shapes/containers/my_rounded_countainer.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class MyCouponApplyWidget extends StatelessWidget {
  const MyCouponApplyWidget({
    super.key,
    
  });


  @override
  Widget build(BuildContext context) {

  final dark = MyAppHelperFunctions.isDarkMode(context);
    return MyRoundedCountainer(
      showBorder: true,
      backgroundColor: dark ? MyAppColors.containerDark : MyAppColors.white,
      padding: EdgeInsets.only(top: MyAppSizes.sm, bottom:MyAppSizes.sm, right: MyAppSizes.sm, left: MyAppSizes.md ),
      child: Row(
        children: [
          Flexible(child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Have a promo code. Enter here.',
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),),
          SizedBox(width: 80, child: ElevatedButton(onPressed: (){}, child: Text('Apply')),),
        ],
      ),
    );
  }
}
