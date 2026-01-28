import 'package:ecomm_store_app/common/widgets/appbar/appbar.dart';
import 'package:ecomm_store_app/common/widgets/products/ratings/rating_bar_indicator.dart';
import 'package:ecomm_store_app/features/shop/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MyProductReviws extends StatelessWidget {
  const MyProductReviws({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: MyAppAppBar(title: Text('Revies & Ratings')),

      // Body
      body: SingleChildScrollView(
        child: Column(
          children: [

            // Review Summary. can be converted to ai-review summary later.
            Text('f the [style] argument is null, the text will use the style from the closest enclosing [DefaultTextStyle].The [overflow] property\'s behavior is affected by the [softWrap] ar'),

            // OverAll Rating section
            MyOverAllProductRating(),
            MyRatingBarIndicator(rating: 4.5,),
            Text('12,611', style: Theme.of(context).textTheme.bodySmall,),
            SizedBox(height: MyAppSizes.spaceBtwSections,),

            // List of User Reviews.
            MyProductReviws(),

          ],
        ),
      ),
    );
  }
}


