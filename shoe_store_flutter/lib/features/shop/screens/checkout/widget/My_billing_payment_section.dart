import 'package:ecomm_store_app/common/widgets/custom_shapes/containers/my_rounded_countainer.dart';
import 'package:ecomm_store_app/common/widgets/texts/section_heading.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/image_strings.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyPaymentMethodsSection extends StatelessWidget {
  const MyPaymentMethodsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        MyAppSectionHeading(
          headingText: 'Payment Method',
          buttonTitle: 'change',
          onPressed: () {},
        ),
        SizedBox(height: MyAppSizes.spaceBtwItems / 2),
        Row(
          children: [
            MyRoundedCountainer(
              width: 60,
              height: 35,
              backgroundColor: dark
                  ? MyAppColors.containerLight
                  : MyAppColors.white,
              padding: EdgeInsets.all(MyAppSizes.sm),
              child: Image(
                image: AssetImage(MyAppImageStrings.paytm),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: MyAppSizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
