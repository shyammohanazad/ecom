
import 'package:ecomm_store_app/common/styles/spacing_styles.dart';
import 'package:ecomm_store_app/features/authentication/screens/login/widget/login_form.dart';
import 'package:ecomm_store_app/common/widgets/login_signUp/login_form_divider.dart';
import 'package:ecomm_store_app/features/authentication/screens/login/widget/login_header.dart';
import 'package:ecomm_store_app/common/widgets/login_signUp/social_login.dart';

import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      // backgroundColor: Color.fromRGBO(13, 24, 32, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: MyAppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [

              /// Logo, Title & subtitle
              LoginHeader(),

              // Form
              LoginForm(),

              // Devider
              FormDivider(dividerText: MyAppTextStrings.orContinueWith.capitalize!,),

              SizedBox(height: MyAppSizes.spaceBtwSections),

              // Social Icons
              SocialLoginWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

