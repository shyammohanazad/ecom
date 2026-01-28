import 'package:ecomm_store_app/common/widgets/custom_shapes/containers/my_rounded_countainer.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MySingleAddress extends StatelessWidget {
  const MySingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return MyRoundedCountainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? MyAppColors.primaryColor.withValues(alpha: 0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
          ? MyAppColors.darkerGrey
          : MyAppColors.grey,
      margin: EdgeInsets.only(bottom: MyAppSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                        ? MyAppColors.lightGrey
                        : MyAppColors.containerDark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shyam Gupta',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: MyAppSizes.sm / 2),
              Text(
                '(+123) 456 7890',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: MyAppSizes.sm / 2),
              Text(
                'a2356 Shyam Gupta, South Liana, MAine, 87665, USA',
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
