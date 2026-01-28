import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MyAppSizes.defaultSpacing),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: MyAppHelperFunctions.screenWidth() * 0.8,
            height: MyAppHelperFunctions.screenHeight() * 0.6,
          ),
          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          SizedBox(height: MyAppSizes.spaceBtwItems),
          Text(subTitle, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
