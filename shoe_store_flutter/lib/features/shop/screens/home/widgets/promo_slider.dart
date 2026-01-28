import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomm_store_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecomm_store_app/common/widgets/images/my_rounded_images.dart';
import 'package:ecomm_store_app/features/shop/controllers/home_controller.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPromoSlider extends StatelessWidget {
  const MyPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyHomeController());

    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => MyRoundedImage(imageUrl: url)).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),

        SizedBox(height: MyAppSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < banners.length; i++)
                  MyAppCircularContainer(
                    width: 20,
                    height: 4,
                    margin: EdgeInsets.only(right: 10),
                    background: controller.carouselCurrentIndex.value == i
                        ? MyAppColors.primaryColor
                        : MyAppColors.darkGrey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
