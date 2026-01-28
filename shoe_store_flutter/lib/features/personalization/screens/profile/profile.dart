import 'package:ecomm_store_app/common/widgets/appbar/appbar.dart';
import 'package:ecomm_store_app/common/widgets/images/my_circular_image.dart';
import 'package:ecomm_store_app/common/widgets/texts/section_heading.dart';
import 'package:ecomm_store_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecomm_store_app/utils/constants/image_strings.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppAppBar(showBackArrow: true, title: Text('Profile'),),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MyAppSizes.defaultSpacing),
          child: Column(
            children: [
              // Profile photo
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    MyCircularImage(image: MyAppImageStrings.defaultUserImageM, width: 80, height: 80,),
                    TextButton(onPressed: (){}, child: Row(
                      children: [Icon(Iconsax.edit),
                        Text('Change Profile Picture'),
                      ],
                    ),),
                  ],
                ),
                ),

                // Details
                SizedBox(height: MyAppSizes.spaceBtwItems / 2,),
                Divider(),
                SizedBox(height: MyAppSizes.spaceBtwItems,),
                MyAppSectionHeading(headingText: 'Profile Information', showActionButton: false,),
                SizedBox(height: MyAppSizes.spaceBtwItems,),

               // Heading Profile Info 
              MyProfileMenu(onPressed: (){}, title: 'Name', value: 'Nikhil Rohilla'),
              MyProfileMenu(onPressed: (){}, title: 'Username', value: 'Nniks@9740'),

SizedBox(height: MyAppSizes.spaceBtwItems / 2,),
                Divider(),
                SizedBox(height: MyAppSizes.spaceBtwItems,),

                // Heading Personal Info
                MyAppSectionHeading(headingText: 'Personal Information', showActionButton: false,),
                SizedBox(height: MyAppSizes.spaceBtwItems,),

                MyProfileMenu(onPressed: (){}, title: 'User Id', value: 'Nniks@1879', icon: Iconsax.copy,),
                MyProfileMenu(onPressed: (){}, title: 'E-mail', value: 'angelnks769@gmail.com'),
                MyProfileMenu(onPressed: (){}, title: 'Phone Number', value: '+144 - 2323237890'),
                MyProfileMenu(onPressed: (){}, title: 'Gender', value: 'Female'),
                MyProfileMenu(onPressed: (){}, title: 'D.O.B', value: '26 July 1996'),

                 Divider(),
                SizedBox(height: MyAppSizes.spaceBtwItems,),

                Center(
                  child: TextButton(onPressed: (){}, child: Text('Close Account', style: TextStyle(color: Colors.red),),),
                )

            ],
          ),
        ),
      ),
    );
  }
}