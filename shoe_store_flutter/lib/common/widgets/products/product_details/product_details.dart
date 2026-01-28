import 'package:ecomm_store_app/common/widgets/products/product_details/widget/product_attribute.dart';
import 'package:ecomm_store_app/common/widgets/products/product_details/widget/product_details_image_slider.dart';
import 'package:ecomm_store_app/common/widgets/products/product_details/widget/product_meta_data.dart';
import 'package:ecomm_store_app/common/widgets/products/product_details/widget/rating_share_widget.dart';
import 'package:ecomm_store_app/common/widgets/texts/section_heading.dart';
import 'package:ecomm_store_app/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class MyProductDetails extends StatelessWidget {
  const MyProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = MyAppHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image SLider
            MyProductImageSlider(),

            // Product Details
            Padding(
              padding: EdgeInsets.only(
                right: MyAppSizes.defaultSpacing,
                left: MyAppSizes.defaultSpacing,
                bottom: MyAppSizes.defaultSpacing,
              ),
              child: Column(
                children: [
                  // Rating and share
                  MyRatingShare(),
                  // Price, Title, Stock, Brand
                  MyProductMetaData(),

                  // Attributes
                  MyProductAttributes(),
                  SizedBox(height: MyAppSizes.spaceBtwSections),
                  // Checkout Button
                  ElevatedButton(onPressed: () {}, child: Text("Checkout")),
                  // Description
                  MyAppSectionHeading(
                    headingText: 'Description',
                    showActionButton: false,
                  ),
                  SizedBox(height: MyAppSizes.spaceBtwItems),
                  ReadMoreText(
                    'This is a Product Description for Blue Sleeve Les Tshirt. Lorem Ipsum',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: 'Show Less',
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  // Reviews
                  Divider(),
                  SizedBox(height: MyAppSizes.spaceBtwSections),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyAppSectionHeading(
                        headingText: 'Reviews (199)',
                        showActionButton: false,
                      ),
                      IconButton(
                        onPressed: () {
                          Get.to(() => MyProductReviws());
                        },
                        icon: Icon(Iconsax.arrow_right_3),
                      ),
                    ],
                  ),
                  SizedBox(height: MyAppSizes.spaceBtwSections,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
