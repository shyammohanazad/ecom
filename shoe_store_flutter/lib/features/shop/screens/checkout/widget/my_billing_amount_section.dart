import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MyBillingSection extends StatelessWidget {
  const MyBillingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Subotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('SUbtotal' , style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$256.0', style: Theme.of(context).textTheme.labelLarge,)
          ],
        ),
        SizedBox(height: MyAppSizes.spaceBtwItems / 2,),

        // shipping Fees
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('SHipping Fees' , style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$56.0', style: Theme.of(context).textTheme.labelLarge,)
          ],
        ),
        SizedBox(height: MyAppSizes.spaceBtwItems / 2,),

        // 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total' , style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$312.0', style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),
        SizedBox(height: MyAppSizes.spaceBtwItems / 2,),
      ],
    );
  }
}