import 'package:ecomm_store_app/common/widgets/custom_shapes/containers/my_rounded_countainer.dart';
import 'package:ecomm_store_app/common/widgets/images/my_circular_image.dart';
import 'package:ecomm_store_app/common/widgets/texts/my_brand_title_with_verified_icon.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/image_strings.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyBrandCard extends StatelessWidget {
  const MyBrandCard({
    super.key,
     this.showBorder = true,
  });

  final bool showBorder;

  @override
  Widget build(BuildContext context) {
final dark = MyAppHelperFunctions.isDarkMode(context);


    return GestureDetector(
      onTap: () {},
      child: MyRoundedCountainer(
        padding: EdgeInsets.all(MyAppSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // Icon -- Flexible Take space only required
            Flexible(
              child: MyCircularImage(
                image: MyAppImageStrings.clothIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: dark
                    ? MyAppColors.white
                    : MyAppColors.black,
              ),
            ),
    
            SizedBox(width: MyAppSizes.spaceBtwItems / 2),
    
            // Text -- Expanded takes space maximum
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyBrandTitleWithVerifiedIcon(title: 'Nike'),
                  Text(
                    '256 Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(
                      context,
                    ).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
