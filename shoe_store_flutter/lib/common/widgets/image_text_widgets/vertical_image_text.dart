import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyAppVerticalImageText extends StatelessWidget {
  const MyAppVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = MyAppColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.only(right: MyAppSizes.spaceBtwItems),
        child: Column(
          children: [
            // Circular Container for Image or Icon
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(MyAppSizes.sm),
              decoration: BoxDecoration(
                color:
                    backgroundColor ??
                    (dark ? MyAppColors.black : MyAppColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? MyAppColors.white : MyAppColors.black,
                ),
              ),
            ),
            SizedBox(height: MyAppSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
