import 'package:ecomm_store_app/common/widgets/brands/my_brand_card.dart';
import 'package:ecomm_store_app/common/widgets/custom_shapes/containers/my_rounded_countainer.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyBrandShowCase extends StatelessWidget {
  const MyBrandShowCase({super.key, required this.images});

  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return MyRoundedCountainer(
      showBorder: true,
      borderColor: MyAppColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: MyAppSizes.spaceBtwItems),
      child: Column(
        children: [
          // Brand With Product Count
          MyBrandCard(),
SizedBox(height: MyAppSizes.spaceBtwItems,),
          // Brand - Top 3 Brand Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: MyRoundedCountainer(
        height: 100,
        backgroundColor: MyAppHelperFunctions.isDarkMode(context)
            ? MyAppColors.darkGrey
            : MyAppColors.containerLight,
        margin: EdgeInsets.only(right: MyAppSizes.sm),
        padding: EdgeInsets.all(MyAppSizes.md),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
