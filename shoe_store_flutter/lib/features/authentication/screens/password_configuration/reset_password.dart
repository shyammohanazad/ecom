import 'package:ecomm_store_app/utils/constants/image_strings.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/constants/text_strings.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MyAppSizes.defaultSpacing),
          child: Column(
            children: [
              //Image
              Image(image: AssetImage(MyAppImageStrings.onboardingImage2), width: MyAppHelperFunctions.screenWidth()*0.6,),
              SizedBox(height: MyAppSizes.spaceBtwSections,),

              // Title and subtitles
              Text(MyAppTextStrings.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              SizedBox(height: MyAppSizes.spaceBtwItems,),
              Text(MyAppTextStrings.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              SizedBox(height: MyAppSizes.spaceBtwSections,),
              
              // button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: Text(MyAppTextStrings.done)),
                ),
                SizedBox(height: MyAppSizes.spaceBtwItems,),

                SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: (){}, child: Text(MyAppTextStrings.resendEmail)),
                ),
            ],
          ),
          ),
      ),
    );
  }
}
