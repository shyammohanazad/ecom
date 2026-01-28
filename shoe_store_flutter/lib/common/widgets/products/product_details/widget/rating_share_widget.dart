import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class MyRatingShare extends StatelessWidget {
  const MyRatingShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Rating
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Iconsax.star1, color: Colors.amber, size: 24),
            SizedBox(width: MyAppSizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '5.0',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextSpan(text: '199'),
    
                ],
              ),
            ),
          ],
        ),
    
        // SHare Button
        IconButton(onPressed: (){}, icon: Icon(Iconsax.share1, size: MyAppSizes.iconSizeMd,))
      ],
    );
  }
}
