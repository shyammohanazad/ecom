import 'package:ecomm_store_app/common/widgets/custom_shapes/containers/my_rounded_countainer.dart';
import 'package:ecomm_store_app/common/widgets/products/ratings/rating_bar_indicator.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/image_strings.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class MyUserReviewsCard extends StatelessWidget {
  const MyUserReviewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return Column(
        children: [
          // User pic, User name and three dot menu.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(backgroundImage: AssetImage(MyAppImageStrings.defaultUserImageF),),
                  Text('Shyam Gupta', style: Theme.of(context).textTheme.titleLarge,),

                ],
              ),
              IconButton(onPressed: (){}, icon:  Icon(Icons.more_vert)),
            ],
          ),
          Row(
            children: [
              MyRatingBarIndicator(rating:4),
              SizedBox(width: MyAppSizes.spaceBtwItems,),
              Text('01 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium,)
            ],
          ),
          SizedBox(height: MyAppSizes.spaceBtwItems,),

          // User's review text
          ReadMoreText(
            'Text id your frsthy uhjki policy trust money honur riheous an weath luxury stronng fighter.', trimLines: 2,
            trimMode: TrimMode.Line,
            trimExpandedText: 'show less',
            trimCollapsedText: 'show more',
            moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: MyAppColors.primaryColor),
            lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: MyAppColors.primaryColor),
          ),
          SizedBox(height: MyAppSizes.spaceBtwItems,),

          // Compny review/reply 
          MyRoundedCountainer(
            backgroundColor: dark ? MyAppColors.darkerGrey : MyAppColors.darkGrey,
            child: Padding(padding: EdgeInsets.all(MyAppSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('My Tee Store', style: Theme.of(context).textTheme.titleLarge,),
                    Text('01 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium,)
                  ],
                ),

                SizedBox(height: MyAppSizes.spaceBtwItems,),

                ReadMoreText(
            'Text id your frsthy uhjki policy trust money honur riheous an weath luxury stronng fighter.', trimLines: 2,
            trimMode: TrimMode.Line,
            trimExpandedText: 'show less',
            trimCollapsedText: 'show more',
            moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: MyAppColors.primaryColor),
            lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: MyAppColors.primaryColor),
          ),
              ],
            ),),
          ),
        ],
      )
    ;
  }
}