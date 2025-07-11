import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google/common/widgets/login_signup/see_form_divider.dart';
import 'package:google/common/widgets/login_signup/see_social_buttons.dart';
import 'package:google/features/authentication/screens/signup/widgets/see_signup_form.dart';
import 'package:google/utils/constants/exports.dart';
import 'package:google/utils/constants/text_strings.dart';
import 'package:google/utils/exports.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SeeHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: dark ? Colors.white:Colors.black,
          ),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(SeeSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                SeeTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: SeeSizes.spaceBtwSections),
              SeeSignUpForm(),
              const SizedBox(height: SeeSizes.spaceBtwItems),

              ///Dvider
              SeeFormDivider(dividerText: SeeTexts.orSignInWith.capitalize!),
              const SizedBox(height: SeeSizes.spaceBtwItems),
              SeeSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
