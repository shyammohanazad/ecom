import 'package:ecomm_store_app/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';

class MyHomeCategories extends StatelessWidget {
  const MyHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return MyAppVerticalImageText(
            image: MyAppImageStrings.shoeIcon,
            title: 'Shoes',
            onTap: () {},
          );
        },
      ),
    );
  }
}
