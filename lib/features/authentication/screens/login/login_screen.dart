import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google/common/styles/spacing_styles.dart';
import 'package:google/common/widgets/login_signup/see_form_divider.dart';
import 'package:google/features/authentication/screens/login/widgets/see_login_form.dart';
import 'package:google/features/authentication/screens/login/widgets/see_login_header.dart';
import 'package:google/common/widgets/login_signup/see_social_buttons.dart';
import 'package:google/utils/constants/sizes.dart';
import 'package:google/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SeeSpacingStyle.pagePaddingWithNoTop,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //logo,Title & Sub-Title
              SeeLoginHeader(),
              //Form
              SeeLoginForm(),
              //Dvider
              SeeFormDivider(
                dividerText: SeeTexts.orSignInWith.capitalize!,
              ),
              SizedBox(height: SeeSizes.spaceBtwItems),

              /// Footer
              SeeSocialButtons(),
              
            ],
          ),
        ),
      ),
    );
  }
}
