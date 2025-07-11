import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google/features/authentication/screens/login/login_screen.dart';
import 'package:google/utils/constants/image_strings.dart';
import 'package:google/utils/constants/sizes.dart';
import 'package:google/utils/constants/text_strings.dart';
import 'package:google/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SeeHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: dark ? Colors.white : Colors.black,
          ),
          onPressed: () => Get.back(),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: SeeSizes.defaultSpace),
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(SeeSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: AssetImage(SeeImage.deliveredEmailIllustration),
                width: SeeHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: SeeSizes.spaceBtwSections),

              ///Title & SubTitle
              Text(
                SeeTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: SeeSizes.spaceBtwItems),
              Text(
                SeeTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: SeeSizes.spaceBtwItems),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.offAll(() => LoginScreen()),
                  child: Text(SeeTexts.seeContinue),
                ),
              ),
              SizedBox(height: SeeSizes.spaceBtwItems),
              TextButton(
                style: ButtonStyle(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                  splashFactory: NoSplash.splashFactory,
                ),
                onPressed: () {},
                child: const Text(SeeTexts.resendEmail),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
