import 'package:ecomm_store_app/common/widgets/texts/section_heading.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyBillingAddressSection extends StatelessWidget {
  const MyBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyAppSectionHeading(headingText: 'Shipping Address', buttonTitle: 'change',onPressed: () {
          
        },),
        Text('Shyam Gupta', style: Theme.of(context).textTheme.bodyLarge,),
        SizedBox(height: MyAppSizes.spaceBtwItems / 2),
        Row(
          children: [
            Icon(Iconsax.call3, color: Colors.grey,size: 16,),
            SizedBox(height: MyAppSizes.spaceBtwItems),
            Text('+91-234-3454769', style: Theme.of(context).textTheme.bodyMedium,),

          ],
        ),
        SizedBox(height: MyAppSizes.spaceBtwItems / 2),
        Row(
          children: [
            Icon(Icons.location_history, color: Colors.grey,size: 16,),
            SizedBox(height: MyAppSizes.spaceBtwItems),
            Expanded(child: Text('Soutn Liana, MAine 87695, USA.' , style: Theme.of(context).textTheme.bodyMedium, softWrap: true,))
          ],
        )
      ],
    );
  }
}