import 'package:ecomm_store_app/common/widgets/login_signUp/login_form_divider.dart';
import 'package:ecomm_store_app/common/widgets/login_signUp/social_login.dart';
import 'package:ecomm_store_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(MyAppSizes.defaultSpacing),
          child: Column(
            children: [
              // Title
              Text(
                MyAppTextStrings.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: MyAppSizes.spaceBtwSections),

              // Sing-Up Form
              SignUpForm(),
              FormDivider(dividerText: MyAppTextStrings.orContinueWith),
              SizedBox(height: MyAppSizes.spaceBtwItems),
              // Social SignUp
              SocialLoginWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
