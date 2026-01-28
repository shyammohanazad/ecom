import 'package:ecomm_store_app/common/widgets/chips/choice_chips.dart';
import 'package:ecomm_store_app/common/widgets/custom_shapes/containers/my_rounded_countainer.dart';
import 'package:ecomm_store_app/common/widgets/texts/section_heading.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MyProductAttributes extends StatelessWidget {
  const MyProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Selected Attribute Pricing & Description
        const MyRoundedCountainer(),
        const SizedBox(height: MyAppSizes.spaceBtwItems),

        // Attributes
        Column(
          children: [
            const MyAppSectionHeading(headingText: 'Colors'),
            const SizedBox(height: MyAppSizes.spaceBtwItems / 2),

            // Colors
            Wrap(
              spacing: 8,
              children: [
                MyChoiceChips(text: 'Green', selected: false, onSelected: (value){},),
                MyChoiceChips(text: 'Red', selected: false, onSelected: (value){},),
                MyChoiceChips(text: 'Blue', selected: true, onSelected: (value){},),
                MyChoiceChips(text: 'Petrol Blue', selected: false, onSelected: (value){},),
              ],
            )
          ],
        ),
        // Sizes
        Column(
          children: [ const MyAppSectionHeading(headingText: 'Sizes'),
            const SizedBox(height: MyAppSizes.spaceBtwItems / 2),

            // Colors
            Wrap(
              spacing: 8,
              children: [
                MyChoiceChips(text: 'EU 34', selected: true, onSelected: (value){},),
                MyChoiceChips(text: 'EU 36', selected: true, onSelected: (value){},),
                MyChoiceChips(text: 'EU 34', selected: true, onSelected: (value){},),
                MyChoiceChips(text: 'EU 34', selected: true, onSelected: (value){},),
                MyChoiceChips(text: 'EU 34', selected: true, onSelected: (value){},),
                MyChoiceChips(text: 'EU 34', selected: true, onSelected: (value){},),
                MyChoiceChips(text: 'EU 34', selected: true, onSelected: (value){},),

              ],
            )],
        )
      ],
    );
  }
}
