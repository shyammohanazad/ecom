import 'package:ecomm_store_app/common/widgets/texts/my_brand_title_text.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/enums.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyBrandTitleWithVerifiedIcon extends StatelessWidget {
  const MyBrandTitleWithVerifiedIcon({super.key, required this.title,  this.maxlines = 1, this.textColor, this.iconColor = MyAppColors.primaryColor, this.textAlign = TextAlign.center,  this.brandTextSize = TextSize.small});

  final String title;
  final int maxlines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSize brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Flexible(child: MyBrandTitleText(
        title: title,
        color: textColor,
        maxLines: maxlines,
        textAlign: textAlign,
        brandTextSize: brandTextSize,
      ),
      ),

      SizedBox(width: MyAppSizes.sm,),
      Icon(Iconsax.verify5, color: iconColor, size: MyAppSizes.iconSizeXs,)
      ],
    );
  }
}
