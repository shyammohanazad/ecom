import 'package:ecomm_store_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/produc_image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../icons/my_circular_icon.dart';
import '../../../appbar/appbar.dart';
import '../../../images/my_rounded_images.dart';

class MyProductImageSlider extends StatelessWidget {
  const MyProductImageSlider({
    super.key,
    
  });

  

  @override
  Widget build(BuildContext context) {
final bool dark = MyAppHelperFunctions.isDarkMode(context);

    return MyCurvedEdgesWidget(
      child: Container(
        color: dark ? MyAppColors.darkGrey : MyAppColors.lightGrey,
        child: Stack(
          children: [
            // Main LArge Image
            SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(
                  MyAppSizes.productImageRadius * 2,
                ),
                child: Center(
                  child: Image(
                    image: AssetImage(MyProductAssets.product13),
                  ),
                ),
              ),
            ),
    
            // Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: MyAppSizes.defaultSpacing,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemBuilder: ((_, index) => MyRoundedImage(
                    imageUrl: MyProductAssets.product14,
                    width: 80,
                    backgroundColor: dark
                        ? MyAppColors.darkGrey
                        : MyAppColors.white,
                    border: Border.all(color: MyAppColors.primaryColor),
                    padding: EdgeInsets.all(MyAppSizes.sm),
                  )),
                  separatorBuilder: (_, _) =>
                      SizedBox(width: MyAppSizes.spaceBtwItems),
                  itemCount: 7,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                ),
              ),
            ),
    
            // Appbar Icons
            MyAppAppBar(
              showBackArrow: true,
              actions: [
                MyCircularIcon(icon: Iconsax.heart5, color: Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
